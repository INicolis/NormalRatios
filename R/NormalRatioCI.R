#' Title Computes confidence interval of the ratio of two normal variables
#'
#' @param mu1 mean of numerator
#' @param mu2 mean of denominator
#' @param sigma1 standard deviation of numerator
#' @param sigma2 standard deviation of denumerator
#' @param rho correlation coefficient between numerator and denominator
#' @param level confidence level required
#'
#' @return lower and upper limit of the ratio's confidence interval
#' @export
#'
#' @examples
#' nci <- NormalRatioCI(mu1 = 5, mu2 = 2.5, sigma1 = 1, sigma2 = 0.5, rho = 0.4)
#'
NormalRatioCI <- function(mu1,mu2,sigma1,sigma2,rho,level=0.95){
  side=(1-level)/2
  interval <- dpfRatio(c(side,1-side),mu1,mu2,sigma1,sigma2,rho)
  print(paste(100*level,"% Confidence Interval = [",signif(interval[1],4),";",signif(interval[2],4),"]"))
return(interval)
}
