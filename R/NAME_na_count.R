#' A function to count all missing values in a data frame
#'
#' \code{na_count} counts the missing values in all columns of a data frame.
#'
#' @param data data frame or tibble
#' @return count of all NAs
#'

#' @export
na_count <- function(data){

  data %>%
    summarise_all(funs(sum(is.na(.)))) %>%
    sum

}