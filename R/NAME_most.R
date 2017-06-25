#' A function to extract the mode
#'
#' \code{most} extracts the most frequent value (mfv; mode) of a numeric vector.
#'
#' This is a convenience function to get the mode of a (numeric) vector.
#'
#'
#' @param x vector (numeric or integer)
#' @return mode most frequent value
#'
#' @examples
#'
#'  most(c(1,1,2))
#'  most(mtcars$cyl)

#' @export
most <- function(x){
  if (!(is.numeric(x))) {
    out <- NA
    return(out)
  }
  x <- stats::na.omit(x)
  t <- base::table(x)
  m <- base::max(t)
  out <- base::as.numeric(base::names(t)[t==m])
  if (base::length(out) > 1) out <- out[1]
  if (base::length(out) == 0) out <- NA
  base::return(out)
}
