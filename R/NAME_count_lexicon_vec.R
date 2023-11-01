#' Count hits in a lexicon
#'
#' Counts the number of times a string is detected in a lexicon,
#' according to a (regex) pattern.
#' This function is based on a inner join of the text and the dictionary.
#'
#' @param vec String (vector) in which the occurences of words from lexicon should be counted
#' @param lexicon_vec vector of target words which should be counted in \code{text}
#'
#' @return Number of hits of text in dictionary
#'
#' @examples
#' my_txt <- c("Hello you! Too bad you are not here")
#' my_dict <- c("Bad", "good")
#' count_lexicon_vec(my_txt, my_dict)
#' 1
#' @export






count_lexicon_vec <- function(vec, lexicon_vec) {

  data <- tibble(col = tolower(vec))
  lexicon <- tibble(word = tolower(lexicon_vec))

  data_long <-
    data %>%
    unnest_tokens(output = word, input = col)

  d_joined <-
    data_long %>%
    inner_join(lexicon, by = "word")

  d_summ <-
    d_joined %>%
    summarise(n = n())

  out <- d_summ %>% pull(n)

  return(out)
}