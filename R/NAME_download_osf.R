#' A function to download data from www.osf.io
#'
#' A simple wrapper around download for not having to type a rather cumbersome download link
#'
#' This is a convenience function to download data from a specified OSF repo. Internet access is needed.
#'
#'
#' @param repo short link to repo, eg. "meyhp" (chr)
#' @return data as data.frame
#'
#' @examples
#'
#'  download_osf("meyhp")

#' @export
download_osf <- function(repo){
  repo <- "meyhp"
  osf_link <- base::paste0("https://osf.io/",repo, "/?action=download")
  out <- utils::read.csv(osf_link)
  base::return(out)
}
