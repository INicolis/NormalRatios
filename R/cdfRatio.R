#' Cumulative Distribution Function of the ratio of two normal variables
#'
#' @param x quantile
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

cdfRatio <- function(x,mu1,mu2,sigma1,sigma2,rho){
  b <- mu2/sigma2
  cr <- sqrt(1/(1-rho^2))
  a <- cr*(mu1/sigma1-rho*b)
  tx <- cr*(x*sigma2/sigma1-rho)
  st2 <- sqrt(1+tx^2)
  bas1 <- (a-b*tx)/st2
  bas2 <- -b
  rhoRatio <- tx/st2
  rhoRatiomat <- matrix(c(1,rhoRatio,rhoRatio,1),nrow=2)
  cdf <- pmvnorm(lower=c(bas1,bas2),corr=rhoRatiomat,keepAttr = F) +
    pmvnorm(lower = c(-bas1,-bas2),corr=rhoRatiomat,keepAttr = F)
  return(cdf)
}
