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
