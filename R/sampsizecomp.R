#' Sample Size Estimation for Mixed Outcomes
#' 
#' Available as a Shiny app with documentation at https://github.com/martinamcm/MultSampSize
#' 
#' @references 
#' 
#' McMenamin M, Barrett JK, Berglind A, Wason JMS. Sample Size Estimation using a 
#' Latent Variable Model for Mixed Outcome Co-Primary, Multiple Primary and Composite Endpoints. 
#' 2019. arXiv:1912.05258.
#' 
#' McMenamin M, Grayling MJ, Berglind A, Wason JMS. Increasing power in the 
#' analysis of responder endpoints in rheumatology: a software tutorial.
#' medRxiv. 2020. doi: 10.1101/2020.07.28.20163378
#'
#' @param augmean mean risk difference treatment effect estimated using augmented binary method
#' @param augvar variance of risk difference treatment effect estimated using augmented binary method
#' @param binmean mean risk difference treatment effect estimated using standard binary method
#' @param binvar variance of risk difference treatment effect estimated using standard binary method
#' @param alpha one-sided alpha level 
#' @param beta beta level: 1-desired power 
#' @author Martina McMenamin.
#' @importFrom stats pnorm qnorm
#' @importFrom mvtnorm pmvnorm 
#' @export

  
sampsizecomp <- function(augmean,augvar,binmean,binvar,alpha,beta){
  
  samp = samplesize(augmean,augvar,binmean,binvar,alpha,beta)
  
  samp
}
  

