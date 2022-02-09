#' Title
#'
#' @param n Numerator
#' @param d Denominator
#'
#' @return Ratio of means
#' @export
#'
#' @examples
#' x <- rnorm(100,50,2)
#' y <- rnorm(60,25,3)
#' compute_ratio(x,y)
compute_ratio <- function(n, d){
  mn <- mean(n)
  md <- mean(d)
  ratio <- mn/md
  return(ratio)
}
