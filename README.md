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

## Homeworks and Oral Exam

A set of homeworks will be released. You will be required to submit all homeworks by email (sara.wade@ed.ac.uk) before the exam dates. During the oral exam, you will be asked to present and answer questions on of the homeworks. Date of the exams TBA.

- [Homework 1](https://htmlpreview.github.io/?https://github.com/sarawade/BS_Trento_Spring2025/blob/main/homeworks/hw1.html): Released April 16, 2025.
