#' Is value within tolerance?
#'
#' Computes if a value is within a tolerance region.
#' Both an absolute tolerance and a relative tolerance are considered.
#' If at least one of both criteria are met, the fuction returns TRUE,
#' otherwise FALSE.
#'
#' In regression models, it can be useful to set the absolute tolerance
#' to 5% of the SD of the outcome variable, following Kruschke (2018).
#' In addition, when the solution value tends to zero,
#' the relative tolerance becomes very small, so an abolute tolerance value
#' is needed.
#'
#' The size of the relative tolerance may depend on a number of factors.
#' Notably, in STAN regression models, it is difficult to devise a cutoff value.
#' Some tests showed that 5-10% can be sensible in some cases.
#'
#' However, when the solution is a proportion (such as for R squared),
#' absolute tolerance must not be set
#' to a fraction of the SD of the outcome variable.
#' Instead, a cutoff value of .05 appears safe.
#'
#' @param asis as-is value (num), the observed value
#' @param tobe to-be value (num), the target value
#' @param tol_rel relative tolerance (as a proportion, num)
#' @param tol_abs absolute tolerance (num)
#'
#' @return in_tolerenace, lgl
#' @export
#'
#' @examples
#' is_in_tolerance(asis = 39.5, tobe = 42, tol_rel = .05, tol_abs = 2.5)



is_in_tolerance <- function(asis, tobe, tol_rel, tol_abs) {

  is_in_tolerance_rel <- function(asis = asis, tobe = tobe, tol_rel = tol_rel) {
    if ((asis >= tobe - (tol_rel*tobe)) &
        (asis <= tobe + (tol_rel*tobe))) {
      in_tolerance <- TRUE
    } else {
      in_tolerance <- FALSE
    }
  }

  is_in_tolerance_abs <- function(asis = asis, tobe = tobe, tol_abs = tol_abs){
    if ((asis >= tobe - tol_abs) &&
        (asis <= tobe + tol_abs))  {
      in_tolerance <- TRUE
    } else {
      in_tolerance <- FALSE
    }
  }

  in_tolerance <- NULL

  if (is_in_tolerance_rel(asis, tobe, tol_rel) ||
      is_in_tolerance_abs(asis, tobe, tol_abs))
    in_tolerance <- TRUE else
      in_tolerance <- FALSE

  return(in_tolerance)

}


