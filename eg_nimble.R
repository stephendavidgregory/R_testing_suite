library(nimble)
# see ?jags.fit
nfun <- nimbleCode({
  for (i in 1:N) {
    Y[i] ~ dnorm(mu[i], tau)
    mu[i] <- alpha + beta * (x[i] - x.bar)
  }
  x.bar <- mean(x[])
  alpha ~ dnorm(0.0, 1.0E-4)
  beta ~ dnorm(0.0, 1.0E-4)
  sigma <- 1.0/sqrt(tau)
  tau ~ dgamma(1.0E-3, 1.0E-3)
})
## data generation
set.seed(1234)
N <- 100
alpha <- 1
beta <- -1
sigma <- 0.5
x <- runif(N)
linpred <- crossprod(t(model.matrix(~x)), c(alpha, beta))
Y <- rnorm(N, mean = linpred, sd = sigma)
## list of data for the model
ndata <- list(Y = Y, x = x)
## list of constants for the model
nconst <- list('N' = N)
## what to monitor
npara <- c("alpha", "beta", "sigma")
## do mcmc
regmod <- nimbleMCMC(code = nfun, constants = nconst, data = ndata, monitors = npara)
## model summary
summary(regmod)
