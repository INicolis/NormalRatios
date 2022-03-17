#' Probability Distribution Function of the ratio of two normal variables
#'
#' @param q a quantile or vector of quantiles
#' @param mu1 mean of numerator
#' @param mu2 mean of denominator
#' @param sigma1 standard deviation of numerator
#' @param sigma2 standard deviation of denumerator
#' @param rho correlation coefficient between numerator and denominator
#'
#' @return distribution function at quantile q
#' @export
#' @importFrom purrr map_dbl
#' @importFrom stats uniroot
#'
#' @examples
#' dpfRatio(c(0.025,0.975) , mu1 = 5, mu2 = 2.5, sigma1 = 1, sigma2 = 0.5, rho = 0.4)
dpfRatio <- function(q,mu1,mu2,sigma1,sigma2,rho){
  if(length(q)==1)
    dpf <- uniroot(function(x) cdfRatio1(x,mu1,mu2,sigma1,sigma2,rho)-q,interval = c(-1E6,1E6))$root
  else
    dpf <- q %>% map_dbl(function(x) {uniroot(function(y) cdfRatio(y, mu1,mu2,sigma1,sigma2,rho)-x,interval=c(-1E6,1E6))$root})
  return(dpf)
}
