#' Get packages necessary for all analyses in package \code{prada}
#'
#' This function checks if you have all the packages necessary
#' for the analyses of this pacakge. If you don't, they will be installed.
#'


#' @export
install_prada_pckgs <- function() {

prada_pckgs <- base::c("BayesFactor", "BaylorEdPsych", "broom", "car", "caret", "cluster",
                "corrplot", "corrr", "desctable", "downloader", "dplyr", "GGally",
                 "ggplot2", "gplots", "grid", "lsa", "lsr", "MASS", "MBESS", "methods",
                 "modelr", "nFactors", "nycflights13", "pander", "pdftools", "plot3D",
                 "plotROC", "png", "pROC", "psych", "pwr", "readr", "SDMTools",
                 "SnowballC", "stringr", "tidyr", "tidytext", "tidyverse", "viridis",
                 "wordcloud")

  pacman::p_load(char = prada_pckgs)

  base::print("If no error occurred, all packages needed to run all analyses in prada-context should be installed now.")
}



