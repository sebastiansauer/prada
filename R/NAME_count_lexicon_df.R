#' Count hits in a lexicon
#'
#' Counts the number of times a string is detected in a lexicon,
#' according to a (regex) pattern
#' This function is based on a inner join of the text and the dictionary.
#'
#' @param data tibble where text data (corpus) is stored
#' @param col String in which the occurences of words from lexicon should be counted
#' @param lexicon vector of target words which should be counted in \code{text}
#' @param group grouping variable
#'
#' @return Number of hits of text in dictionary
#'
#' @examples
#' my_txt <- c("Hello you! Too bad you are not here")
#' my_dict <- c("Bad", "good")
#' count_lexicon(my_txt, my_dict)
#' 1
#' @export




count_lexicon_df <- function(data, lexicon, col, group) {

  lexicon <-
    lexicon %>%
    mutate(word = tolower(word))

  data %>%
    unnest_tokens(output = word, input = {{col}}) %>%
    inner_join(lexicon, by = "word") %>%
    group_by({{group}}) %>%
    summarise(n = n())

  return(data)
}