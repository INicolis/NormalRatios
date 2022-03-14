#' Cumulative Distribution Function of the ratio of two normal variables
#'
#' @param x a quantile value or a vector of quantile values
#' @param mu1 mean of numerator
#' @param mu2 mean of denominator
#' @param sigma1 standard deviation of numerator
#' @param sigma2 standard deviation of denumerator
#' @param rho correlation coefficient between numerator and denominator
#'
#' @return cumulative distribution function at quantile x
#' @importFrom mvtnorm pmvnorm
#' @importFrom purrr map_dbl
#'
#' @examples
#' cdfRatio(x = c(1.4,2.3,3.6), mu1 = 5, mu2 = 2.5, sigma1 = 1, sigma2 = 0.5, rho = 0.4)

cdfRatioN <- function(x,mu1,mu2,sigma1,sigma2,rho){
  cdf <- x %>% map_dbl(cdfRatio1,mu1,mu2,sigma1,sigma2,rho)
  return(cdf)
}
