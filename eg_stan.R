library(cmdstanr)
if(file.exists(file.path(cmdstan_path(), "examples", "bernoulli", "bernoulli.exe"))) {
  unlink(file.path(cmdstan_path(), "examples", "bernoulli", "bernoulli.exe"))
}
file <- file.path(cmdstan_path(), "examples", "bernoulli", "bernoulli.stan")
mod <- cmdstan_model(file)
data_list <- list(N = 10, y = c(0,1,0,0,0,0,0,0,0,1))
fit <- mod$sample(
  data = data_list, 
  seed = 123, 
  chains = 4, 
  parallel_chains = 4,
  refresh = 500 # print update every 500 iters
)
print(fit)

