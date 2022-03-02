library(future.apply)
library(tictoc)

# a slow function
slow_square <- function(x = 1) {
  x_sq <- x^2 
  d <- data.frame(value = x, value_squared = x_sq)
  Sys.sleep(2)
  return(d)
}

# test sequential
plan(sequential)
tic()
seq_ex <- future_lapply(1:4, slow_square)
toc(log = TRUE)

# compare multisession
plan(multisession)
tic()
mse_ex <- future_lapply(1:4, slow_square)
toc(log = TRUE)

# multicore is fastest, but only on *nix systems, else uses sequential
plan(multicore)
tic()
mco_ex <- future_lapply(1:4, slow_square)
toc(log = TRUE)

# check they are identical
identical(seq_ex, mse_ex)
identical(seq_ex, mco_ex)
identical(mco_ex, mse_ex)

