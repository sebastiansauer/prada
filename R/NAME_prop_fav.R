#' A function to compute the proportion of 'favorable' pairwise comparisons
#'
#' This function takes two vectors (x,y; ie., group 1 and 2) of values and computes all pairwise comparisons (>, ie., "greater than"). The proportion of x>y is returned. Columns must be quoted.
#'
#' @param df data frame
#' @param value are (unquoted) column with values of the two vectors
#' @param group bare (unquoted) column with grouping information
#' @param g1 name of group 1 (quoted if not numeric)
#' @param g2 name of group 2 (quoted if not numeric)
#' @return proportion of x>y
#'
#' @examples
#' prop_fav(df = mtcars, value = hp, group = cyl, g1 = 6, g2 = 4)
#' data(extra, package = "prada")
#' prop_fav(df = extra, value = extra_mean, group = sex, g1 = "Frau", g2 = "Mann")

#' @importFrom rlang enquo !!
#' @importFrom dplyr select filter pull %>%
#' @export
prop_fav <- function(df, value, group, g1, g2){
  value <- enquo(value)
  group <- enquo(group)


  df %>%
    filter((!!group) == g1) %>%
    select(!!value) %>%
    pull -> values_g1

  df %>%
    filter((!!group) == g2) %>%
    select(!!value) %>%
    pull -> values_g2

  values_g1 <- na.omit(values_g1)

  comp_grid <- expand.grid(values_g1, values_g2)

  fav_vec <- comp_grid[["Var1"]] > comp_grid[["Var2"]]

  fav_sum <- sum(fav_vec)

  fav_prop <- fav_sum / nrow(comp_grid)

  return(fav_prop)

}
