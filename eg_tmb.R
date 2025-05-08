library(TMB)
compile("eg_tmb.cpp")
dyn.load(dynlib("eg_tmb"))
set.seed(123)
data <- list(Y = rnorm(10) + 1:10, x = 1:10)
parameters <- list(a = 0, b = 0, logSigma = 0)
obj <- MakeADFun(data, parameters, DLL = "eg_tmb")
obj$hessian <- TRUE
opt <- do.call("optim", obj)
opt
opt$hessian ## <-- FD hessian from optim
obj$he()    ## <-- Analytical hessian
sdreport(obj)
