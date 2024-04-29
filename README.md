# R testing suite

Some R scripts to test an R installation for shiny, Rmarkdown, LaTeX, Stan, jags, nimble, greta and future.

# updating R notes

  1. Change the R_LIBS_USER to the location of your personal R libraries by:
  
    `Control panel > User accounts > Change my environment variables`

# R versions

## 4.4.0 (Puppy Cup)

- Also installed Rtools44.

- `cmdstanr` didn't like that it couldn't find `Rtools43` and so I set an environmental variable `Rtools43` pointing to `c:\rtools44`.

- All other tests passed without issue


