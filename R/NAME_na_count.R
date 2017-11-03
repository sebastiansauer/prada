#' A function to count all missing values in a data frame
#'
#' \code{na_count} counts the missing values in all columns of a data frame.
#'
#' @param data data frame or tibble
#' @return count of all NAs
#'
#'
#'
#' @importFrom dplyr summarise_all funs
#'
#' @export
na_count <- function(data){

  data %>%
    dplyr::summarise_all(dplyr::funs(sum(is.na(.)))) %>%
    sum

}