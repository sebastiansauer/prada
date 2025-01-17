#' Compute Bayes Box
#'
#' Similar to Allen Downey's concept of a Bayes Box, such a table is computed by this function.
#' It can be used for simple Bayes models of discrete (non-continuous) variables.
#'
#' @param hyps Vector of hypotheses (all types allowed), or parameter values, serves as ID
#' @param priors Vector of prior probabilities (numeric)
#' @param liks Vector of likelihoods (numeric)
#' @param round number of decimal places
#'
#' @return data.frame with Bayes Box
#' @export
#'
#' @examples
#'
#' hyps <- seq(0,1, by = .1)
#' bayesbox(hyps = hyps, priors = 1, liks = dbinom(x = 5, size = 7, prob = hyps), round = 3)
bayesbox <- function(hyps, priors, liks, round = 2L) {

  if (!(is.numeric(hyps) | is.integer(hyps))) hyps <- as.factor(hyps)

  out <-
    data.frame(
      hyps = hyps,
      priors = round(priors, round),
      liks = round(liks, round))

  out$post_unstand <- round(priors*liks, round)
  out$post_std = round(out$post_unstand / sum(out$post_unstand), round)

  return(out)
}

