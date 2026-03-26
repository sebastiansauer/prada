#' Sample size for a given R2 width
#'
#' Computes sample size needed for a given width of a R squared confidence intervall.
#'
#' In the contect of simple linear models, compute the minimal sample size given the parameters.
#'
#' @param u number of predictors
#' @param r2 observed or expected R squared
#' @param target_width width of the confidence interval (dafaults to 0.1)
#'
#' @return data frame with upper/lower limit of confidence interval
#' @export
#' @examples
#'
#' u <- 5
#' r2 <- .3
#' ss <- sample_size_for_r2(u = u, r2 = r2)
sample_size_for_r2 <- function(u, r2, target_width = 0.1) {
  res <- tibble::tibble(N = 20:5000) |>
    dplyr::mutate(
      df2 = N - u - 1
    ) |>
    dplyr::filter(df2 > 0) |>
    dplyr::mutate(
      ci = purrr::map(df2, ~ MBESS::ci.R2(R2 = r2, df.1 = u, df.2 = .x, conf.level = 0.95)),
      lower = purrr::map_dbl(ci, "Lower.Conf.Limit.R2"),
      upper = purrr::map_dbl(ci, "Upper.Conf.Limit.R2"),
      width = upper - lower
    )

  res |>
    dplyr::filter(width <= target_width) |>
    dplyr::slice(1)
}
