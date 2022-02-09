#' Title
#'
#' @param x First variable vector
#' @param y Second variable vector
#'
#' @return Variance-covariance matrix
#' @importFrom stats var
#' @export
#'
#' @examples
#' x <- c(.26, 3.43, 7.38, 5.29, 3.32, 3.93, 4.97, 3.35, 4.76, 3.91)
#' y <- c(10.17,  6.12,  9.30, 10.79, 10.56,  8.26,  7.90,  8.93, 10.80,  9.06)
#' compute_var(x,y)
compute_var <- function(x,y){
  mat <- matrix(data = c(x,y),byrow=F,ncol=2)
  varcov <- var(mat)
  return(varcov)
}
