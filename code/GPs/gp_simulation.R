######################################
### Intro to Gaussian process regresion
######################################

# Load packages
library(ggplot2)

# Define kernel function
se = function(x,ls=1,mag=1){
  x.dist = as.matrix(dist(x)^2)
  return(mag*exp(-1/(2*ls^2)*x.dist))
}

## TODO: try creating a matern covariance function

## Part 1: Simulating from the Prior

# Create a grid of points
x.grid = seq(0,10,.01)
n.grid = length(x.grid)

# Compute covariance matrix
Kx = se(x.grid,1,1)

# Draw prior samples
set.seed(1011)
nugget = 0.00001 # needed to avoid numerical issues
cKx = chol(Kx+nugget* diag(n.grid))
n.samps = 10
f.samps = sapply(c(1:n.samps), function(i){t(cKx)%*%rnorm(n.grid)})

# Plot samples
f.df =data.frame(f.samps)
names(f.df) = as.character(c(1:n.samps))
f.long = pivot_longer(f.df, cols = names(f.df), names_to ="sample", values_to = 'f')
f.long$x = rep(x.grid,each=n.samps)
ggplot() +
  geom_line(aes(x=x.grid,y=rep(0,n.grid)), color="black") +
  geom_ribbon(aes(x=x.grid,ymax=rep(2,n.grid), ymin=rep(-2,n.grid)), fill="blue",alpha=0.1, color="black", linetype='dashed') +
  geom_line(data=f.long, aes(x=x, y=f, color=sample), show.legend = FALSE) +
  theme_bw() +
  labs(x="x",y="y") 

## TODO: try changing the length scale or magnitude to see how it effects the prior samples
## TODO: try using the matern covariance function

## Part 2: Simulating from the Posterior

# Create some toy data
n = 50
p=1
x = matrix(runif(n,0,10),n,p)
f = sin(2*x)*exp(x/5)
sy = 0.4
y = f + sy*rnorm(n,0,1)
ggplot()+
  geom_point(aes(x,y)) +
  geom_line(aes(x,f)) +
  theme_bw()

# Posterior predictive
ls = 1
mag = 1
iKx = solve(se(x,ls,mag) +sy^2*diag(n))
x.grid = seq(-0.5,10.5,.01)
n.grid = length(x.grid)
Kxxgrid = se(rbind(matrix(x.grid,n.grid,p),x),ls,mag)
Kxgrid_post = Kxxgrid[1:n.grid,1:n.grid]-Kxxgrid[1:n.grid,(n.grid+1):(n.grid+n)]%*%iKx%*%Kxxgrid[(n.grid+1):(n.grid+n),1:n.grid] 
mxgrid_post = Kxxgrid[1:n.grid,(n.grid+1):(n.grid+n)]%*%iKx%*%matrix(y,n,1)

# Plot Posterior predictive (mean and pointwise CIs)
ggplot() +
  geom_line(aes(x=x.grid,y=mxgrid_post), color="black") +
  geom_point(aes(x,y)) +
  geom_line(aes(x=x.grid,y=sin(2*x.grid)*exp(x.grid/5)), color="red") +
  geom_ribbon(aes(x=x.grid,ymax=mxgrid_post+2*sqrt(diag(Kxgrid_post)), ymin=mxgrid_post-2*sqrt(diag(Kxgrid_post))), fill="blue",alpha=0.1, color="black", linetype='dashed') +
  theme_bw() +
  labs(x="x",y="y") 

# Plot posterior samples
nugget = 0.00001 # needed to avoid numerical issues
cKxgrid_post = chol(Kxgrid_post+nugget* diag(n.grid))
n.samps = 10
f.samps = sapply(c(1:n.samps), function(i){mxgrid_post +t(cKxgrid_post)%*%rnorm(n.grid)})
f.df =data.frame(f.samps)
names(f.df) = as.character(c(1:n.samps))
f.long = pivot_longer(f.df, cols = names(f.df), names_to ="sample", values_to = 'f')
f.long$x = rep(x.grid,each=n.samps)
ggplot() +
  geom_line(data=f.long, aes(x=x, y=f, color=sample), show.legend = FALSE) +
  geom_line(aes(x=x.grid,y=mxgrid_post), color="black") +
  geom_point(aes(x,y)) +
  theme_bw() +
  labs(x="x",y="y") 

## TODO: try changing the length scale or magnitude to see their effects
## BONUS: use the optim function to find the signal variance and kernel parameters that maximize the likelihood
