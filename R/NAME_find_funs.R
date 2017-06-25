#' A function to identify the installed package(s) for a given function name
#'
#' \code{find_funs} identifies the package(s) in which a given function name \code{f} exists.
#'
#' The code of this function was inspired by code from Ben Bolker
#'     at \url{https://stackoverflow.com/questions/10553755/name-of-a-package-for-a-given-function-in-r}
#'
#' @param f function name (chr)
#' @return \code{package_name} packages(s) which the function is part of (chr),
#'     \code{builtin_package}  whether the package comes with standard R (a 'builtin' package; lgl),
#'     \code{loaded} whether that package is currently loaded/attached (lgl)
#' @examples
#'
#'  find_funs("qplot")
#'  find_funs("select")
#'  find_funs("mean")
#'  find_funs("sdfjkl")
#'
#'

#' @export
find_funs <- function(f) {

  # search for help in list of installed packages
  help_installed <- utils::help.search(paste0("^",f,"$"), agrep = FALSE)

  # extract package name from help file
  pckg_hits <- help_installed$matches[,"Package"]

  if (base::length(pckg_hits) == 0) pckg_hits <- "No_results_found"

  # get list of built-in packages

  pckgs <- utils::installed.packages()
  pckgs <- tibble::as_tibble(pckgs)
  pckgs <- dplyr::filter(pckgs, Priority  == "base" | Priority == "recommended")
  pckgs <- dplyr::select(pckgs, Package)
  builtin_pckgs_df <- dplyr::distinct(pckgs)

  # check for each element of 'pckg hit' whether its built-in and loaded (via match). Then print results.

  results <- tibble::data_frame(
    package_name = pckg_hits,
    builtin_pckage = base::match(pckg_hits, builtin_pckgs_df$Package, nomatch = 0) > 0,
    loaded = base::match(base::paste("package:",pckg_hits, sep = ""), base::search(), nomatch = 0) > 0
  )

  base::return(results)

}

