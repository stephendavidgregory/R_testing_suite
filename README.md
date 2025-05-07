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

## 4.5.0 (How About a Twenty-Six)

> [!IMPORTANT]
> I have been playing with using R with OpenBLAS to improve computation speeds following https://github.com/david-cortes/R-openblas-in-windows. The results of some tests using R with OpenBLAS and BLAS differ. Specifically, "eg_nimble.R" works for R with BLAS, but not R with OpenBLAS. For now, I conclude that nimble needs BLAS.

- Also installed Rtools45.

- nimble does not work with OpenBLAS.

- All other tests passed without issue

