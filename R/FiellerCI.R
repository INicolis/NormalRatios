#' Computes Fieller Confidence Interval
#'
#' @param numerator Numerator
#' @param denominator Denominator
#' @param alpha Alpha risk level
#'
#' @return A vector of Lower limit of confidence interval, ratio of means, Upper limit of confidence interval
#' @export
#' @importFrom stats qt
#'
#' @examples
#' x <- c(3.26, 3.43, 7.38, 5.29, 3.32, 3.93, 4.97, 3.35, 4.76, 3.91)
#' y <- c(10.17,  6.12,  9.30, 10.79, 10.56,  8.26,  7.90,  8.93, 10.80,  9.06)
#' FiellerCI(x, y, 0.05)
FiellerCI <- function(numerator,denominator,alpha=0.05){
  r <- compute_ratio(numerator,denominator)
  md <- mean(denominator)
  v <- compute_var(x = numerator, y = denominator)
  df <- length(numerator) + length(denominator) - 2
  tbilat <- qt(1-alpha/2, df)
  g <- tbilat^2 * v[2,2] / md^2
  hw <- tbilat / md * sqrt(v[1,1] - 2*r*v[1,2] + r^2*v[2,2] - g*(v[1,1]-v[1,2]^2/v[2,2]))
  CIL <- 1/(1-g)*(r - g*v[1,2]/v[2,2] - hw)
  CIU <- 1/(1-g)*(r - g*v[1,2]/v[2,2] + hw)
  return(c(LL=CIL,ratio=r,UL=CIU))
}
