#' Get packages necessary for all analyses in package \code{prada}
#'
#' This function checks if you have all the packages necessary
#' for the analyses of this pacakge. If you don't have them,
#' this function will get them installed.


#' @return does not return any object

#' @examples
#'  install_prada_pckgs()


#' @export
install_prada_pckgs <- function() {
  pacman::p_load(char = prada_pckgs)
  base::print("If no error occurred, the packages needed to run all analyses in prada-context should be installed now.")
}



