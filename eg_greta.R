reticulate::use_condaenv(condaenv = "r-tensorflow")
library(greta)
library(tensorflow)
library(extraDistr)

## simulate Bernoulli data with 72% prob of success
y <- rbern(n = 100, prob = 0.72) #data

## create prior for theta - prob of success
theta = uniform(0,1)  #prior

## specify likelihood of data
distribution(y) <- bernoulli(prob = theta)  #likelihood

## create model - list parameters of interest
m <- model(theta)

## get representative sample of posterior distribution
draws <- mcmc(m)

## plot
foo <- as.matrix(draws)
hist(foo)
