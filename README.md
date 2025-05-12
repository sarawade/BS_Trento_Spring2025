# BS_Trento_Spring2025
Material for the Bayesian Statistics Course Part 2, University of Trento, Spring 2025

## Course Outline:

**Lecture 1: Random Number Generators** April 7, 2025
- Pseudo-random number generators
- Evaluating and testing pseudo-random number generators
- Non-uniform random number generators
  - CDF Inversion
  - Transformations
    
References:
- [Owen (2013), Chp 3](https://artowen.su.domains/mc/Ch-unifrng.pdf)
- [Owen (2013), Chp 4](https://artowen.su.domains/mc/Ch-nonunifrng.pdf)

**Lecture 2: Monte Carlo Integration and Importance Sampling** April 8, 2025
- Monte Carlo Integration
  - Properties: unbiased, consistency, CIs
  - Sample size determination: concentration inequalties (Chebyshev, Hoeffding)
- Importance Sampling
  - Properties: unbiased, consistency, CIs
  - Optimal importance distribution
    
References:
- [Owen (2013), Chp 2](https://artowen.su.domains/mc/Ch-intro.pdf)
- [Owen (2013), Chp 9](https://artowen.su.domains/mc/Ch-var-is.pdf)

**Lecture 3: Self-Normalized Importance Sampling** April 10, 2025
- Estimating Ratios
- Self-normalized Importance Sampling
  - Properties: asymptotically unbiased, consistency, CIs
  - Optimal importance distribution
- Diagonistics: effective sample size

References:
- [Owen (2013), Chp 9](https://artowen.su.domains/mc/Ch-var-is.pdf)

**Lecture 4: Sample Size Required** April 14, 2025
- Sample size required for IS
- Sample size required for SNIS

References:
- [Chaterjee and Diaconis (2018)](https://arxiv.org/abs/1511.01437)

**Lecture 5: Gaussian Processes** April 15, 2025
- Bayesian nonparametric regression
- Gaussian process (GP) priors (see code provided)
  - covariance functions
- Computational challenges in GP regression
- Mixtures of GP experts for scalable inference
- SNIS for Mixtures of GP experts

References:
- [Zhang and Williamson (2019)](https://arxiv.org/abs/1702.08420)

For further references and introductions to Gaussian processes:
- [Owen (2013), Chp 6.3](https://artowen.su.domains/mc/Ch-processes.pdf)
- [Orbanz (2014), Chp 4](http://www.gatsby.ucl.ac.uk/~porbanz/papers/porbanz_BNP_draft.pdf)
- [Rasmussen and Williams (2006)](https://gaussianprocess.org/gpml/)
- [Ghoshal and Van der Vaart (2017), Chp 11](https://www.cambridge.org/core/books/fundamentals-of-nonparametric-bayesian-inference/C96325101025D308C9F31F4470DEA2E8)

**Lecture 6: Modal and Laplace Approximations** April 17, 2025
- Maximum a posterior estimators (MAP)
  - Bayesian Ridge example
  - Conditional maximization/coordinate ascent
  - Numerical techniques
- Laplace approximations 
  - Gaussian approximations
  - Mixtures of Gaussian approximations
  - Example: Laplace approximation for GP classification
 
References:
- [Bayesian Data Analysis (2021)](https://sites.stat.columbia.edu/gelman/book/BDA3.pdf)
  - Chp 4 on Asymptotics and Connections to non-Bayesian approaches
  - Chp 13 on Model and Distributional Approximations
- [Introduction to Statistical Learning (2021)](https://www.statlearning.com)
  - Chp 6.4 on Shrinkage Methods (including Ridge, Bayesian Ridge)
- [Gaussian Processes for Machine Learning (2006)](https://gaussianprocess.org/gpml/)
  - Chp 3.4 on Laplace Approximation for GP classification
 
**Lecture 7: Intro to Markov Chain Monte Carlo (MCMC)** April 28, 2025 (online, [recording](https://ed-ac-uk.zoom.us/rec/share/8ukLSvdKRJiIWSWAAqI605zwU5BPJZPdyUUdXoffHQW3F7XM0riQ-pCU4759nf74.9vHNGXqI4t8YILQz))
- Intro to MCMC
- Overview of probabilistic programming languages for MCMC
- Review of Markov Chains
  - Markov chains, transition kernels, and time homogenity
  - Invariant distributions and ergodic Markov chains
  - Ergodic Theorem for Markov chains, geometric ergodicity
  - Detailed balance equations

References:
 - [Owen (2013), Chp 11](https://artowen.su.domains/mc/Ch-MCMC.pdf)
 - [Bayesian Data Analysis (2021), Chp 11 on Basics of Markov Chain Simulation](https://sites.stat.columbia.edu/gelman/book/BDA3.pdf)

Further references on probabilistic programming:
- JAGS: [Ross (2022), Chp 10.1 Intro to JAGS](https://bookdown.org/kevin_davisross/bayesian-reasoning-and-methods/introduction-to-jags.html), [rjags](https://cran.r-project.org/web/packages/rjags/rjags.pdf)
- [NIMBLE](https://r-nimble.org): see website for introduction, examples, and documentation
- [Stan](https://mc-stan.org): see website for introduction, examples, and documentation, and [rstan](https://mc-stan.org/rstan/) for the R interface.
- [Turing.jl](https://turinglang.org): in Julia
- [NumPyro](https://num.pyro.ai/en/latest/index.html#introductory-tutorials): in Python

**Lecture 8: Metropolis-Hastings (MH)** April 29, 2025 (online, [recording](https://ed-ac-uk.zoom.us/rec/share/xvo4pcaGkn6LiuEmd1v0QdJ33hn_jVegzcUgkmsdS72Gxa4QpnTD-dTtQaj7P4N5.nP8vvKjnJbhjS788))
- Intro to Metropolis-Hastings
- Independence Sampler
- Random Walk
  - Example: Logistic Regression
 
References:
- [Owen (2013), Chp 11](https://artowen.su.domains/mc/Ch-MCMC.pdf)
- [Bayesian Data Analysis (2021), Chp 11 on Basics of Markov Chain Simulation](https://sites.stat.columbia.edu/gelman/book/BDA3.pdf)

**Lecture 9: MCMC Diagnostics (MH)** May 5, 2025 (only 1 hr!, online, [recording](https://ed-ac-uk.zoom.us/rec/share/herAGmW0fy8bmiZxh2rm2su0S04qDlS6CDiPYvHpJenMWU5ZB2QH7CgXmXD7FdN8.BGao9eGt7dRkg8cs))
- Burn-in
- Diagnostics (trace plots, ACF, Gelman diagnostic, effective sample size, average squared jump distance)
- MCMC error, batch estimate

References:
- [Owen (2013), Chp 11](https://artowen.su.domains/mc/Ch-MCMC.pdf)
- [coda R package](https://cran.r-project.org/web/packages/coda/coda.pdf)

**Lecture 10: Adaptive Metropolis-Hastings and Gibbs sampling** May 6, 2025 (online, [recording](https://ed-ac-uk.zoom.us/rec/share/UVonqG6NbBSPx3Z03hdkmxKdTyNDIYaA9H_fpHq8OAACFGebQOq1smJLHKfptNPz.ijlgC57glY-ieCo2))
- Thinning (diagnositics continued)
- Adaptive random walk
- Gibbs sampling:
  - Systematic vs Random scan
  - Correlated components in Gibbs sampling
  - Blocked and Collapsed Gibbs sampling
  - Example: Probit Regression (data augmentation + blocked Gibbs)

References:
- [Griffin and Stephens (2013), Advances in MCMC](https://academic.oup.com/book/12043/chapter/161359578), Section 7.4 on Adaptive MCMC
- [Owen (2013), Chp 12](https://artowen.su.domains/mc/Ch-MCMC.pdf)

**Lecture 11: Gibbs sampling** May 6, 2025 (online, [recording](https://ed-ac-uk.zoom.us/rec/share/PdRYFWkJpOSVHNsS6VXGd9cNJIh19aDXovxPgHDZeqMHxj-O1NC-IR9jeITQYPU.roxHx28NtDrswx1o))
  - Slice Sampling (data augmentation + Gibbs) 
     - Example: Truncated normal (slice sampling)
  - Gibbs and Metropolis Hybrids
    - Metropolis within Gibbs
    - Metroplized Gibbs
  - Bayesian Lasso (data augmentation + Gibbs)

References:
- [Owen (2013), Chp 12](https://artowen.su.domains/mc/Ch-MCMC.pdf)
- [Park and Casella (2012), The Bayesian Lasso](https://www.tandfonline.com/doi/abs/10.1198/016214508000000337)

Further references on Bayesian variable selection:
- [Rstan tutorial](https://betanalpha.github.io/assets/case_studies/modeling_sparsity.html)
- [Handbook of Bayesian Variable Selection (2022)](https://www.taylorfrancis.com/books/edit/10.1201/9781003089018/handbook-bayesian-variable-selection-mahlet-tadesse-marina-vannucci)

## Homeworks and Oral Exam

A set of homeworks will be released. You will be required to submit all homeworks by email (sara.wade@ed.ac.uk) by **June 1, 2025**. Include both the Rmd and html files for all homeworks (along with any other necessary files) together in one zip file. During the oral exam, you will be asked to present and answer questions on of the homeworks. The oral exam will be held online on zoom. The link to sign up for a 30min time block will be circulated closer to the date. You should bring a writing tablet and will be asked to have your video on and show a copy of your student ID at the start of the exam. Please email me if you do not have access to a writing tablet.

- [Homework 1](https://htmlpreview.github.io/?https://github.com/sarawade/BS_Trento_Spring2025/blob/main/homeworks/hw1.html): Released April 16, 2025.
- [Homework 2](https://htmlpreview.github.io/?https://github.com/sarawade/BS_Trento_Spring2025/blob/main/homeworks/hw2.html): Released April 18, 2025.
- Homework 3: TBA
- Homework 4: TBA

**EXAM Dates**
June 17,2025
July 21, 2025
August 25, 2025
