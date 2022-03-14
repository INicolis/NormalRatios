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
#' @export
#' @importFrom mvtnorm pmvnorm
#'
#' @examples
#' cdfRatio(x = 2.3, mu1 = 5, mu2 = 2.5, sigma1 = 1, sigma2 = 0.5, rho = 0.4)
#' curve(cdfRatio(x, mu1 = 1, mu2 = 0.5, sigma1 = 0.4, sigma2 = 0.6, rho = 0.9),from=-5,to=5,ylim=c(0,1))

cdfRatio <- function(x,mu1,mu2,sigma1,sigma2,rho){
  if(length(x)==1)
    cdf <- cdfRatio1(x,mu1,mu2,sigma1,sigma2,rho)
  else
    cdf <- cdfRatioN(x,mu1,mu2,sigma1,sigma2,rho)
  return(cdf)
}
