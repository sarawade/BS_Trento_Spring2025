logreg_rw_MH = function(X, y, mcmc.list=NULL, prior.list=NULL, param.init=NULL){
  
  # Set parameter values
  n = dim(X)[1]
  p = dim(X)[2]
  
  # Prior parameters
  if(is.null(prior.list)){
    beta0 = matrix(c(0,0),p,1)
    Sigma0 = 100*diag(p)
  }else{
    beta0 = prior.list$beta0
    Sigma0 = prior.list$Sigma0
  }
  
  # MCMC parameters
  if(is.null(mcmc.list)){
    M = 5000
    burnin = 1000
    thin = 1
    rw_var = 0.1*diag(p)
  }else{
    M = mcmc.list$M
    burnin = mcmc.list$burnin
    thin = mcmc.list$thin
    rw_var = mcmc.list$rw_var
  }
  if(is.null(param.init)){
    param = t(rmvnorm(1,mean=beta0,sigma=Sigma0))
  }else{
    param = param.init
  }
  
  # Initialize output
  param.mat = matrix(0,M,p)
  avg.accep = rep(0,M*thin+burnin)
  sq.jump.dist = rep(0,M*thin+burnin)
  
  # RW MH
  iter_total = burnin + M*thin
  for(i in c(1:iter_total)){
    
    # Propose a new value
    param_new = t(rmvnorm(1, mean = param, sigma = rw_var))
    
    # Compute acceptance prob
    p_new= 1/(1+exp(-X%*%param_new))
    p_old= 1/(1+exp(-X%*%param))
    laccep = sum(y*(log(p_new)-log(p_old))+(1-y)*(log(1-p_new)-log(1-p_old))) + dmvnorm(t(param_new),beta0,Sigma0)-dmvnorm(t(param),beta0,Sigma0)
    accep = min(1, exp(laccep))
    
    # Update param
    param_old = param
    if(runif(1)<accep){
      param = param_new
    }
    
    # Save output
    avg.accep[i] =  accep
    sq.jump.dist[i] = sum((param-param_old)^2)
    if( (i>burnin) & ((i-burnin)%%thin==0) ){
      param.mat[(i-burnin)/thin,] = param
    }
  }
  
  avg.accep= cumsum(avg.accep)/c(1:M)
  sq.jump.dist = cumsum(sq.jump.dist)/c(1:M)
  out = list(param.mat= param.mat, avg.accep = avg.accep, sq.jump.dist=sq.jump.dist)
  return(out)
}