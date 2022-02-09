
<!-- README.md is generated from README.Rmd. Please edit that file -->

# RatiosCI

<!-- badges: start -->
<!-- badges: end -->

The goal of RatiosCI is to to compute confidence intervals for ratios of
two random variables.

## Installation

You can install
<!-- the released version of RatiosCI from [CRAN](https://CRAN.R-project.org) with: -->

<!-- ``` r -->
<!-- install.packages("RatiosCI") -->
<!-- ``` -->
<!-- And  -->

the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("INicolis/RatiosCI")
```

## Example

Compute Confidence Interval for a ratio using Fieller’s theorem:

``` r
library(RatiosCI)
## basic example code
x <- c(3.26, 3.43, 7.38, 5.29, 3.32, 3.93, 4.97, 3.35, 4.76, 3.91)
y <- c(10.17,  6.12,  9.30, 10.79, 10.56,  8.26,  7.90,  8.93, 10.80,  9.06)
FiellerCI(x, y, 0.05)
#>        LL     ratio        UL 
#> 0.1818470 0.4744804 0.8559575
```
