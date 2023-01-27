#' Count hits in a lexicon
#'
#' Counts the number of times a string is detected in a lexicon, according to a (regex) pattern
#'
#' @param txt String in which the occurences of words from lexicon should be counted
#' @param lexicon vector of target words which should be counted in \code{text}
#'
#' @return string
#' @export
#'
#' @examples
#' my_txt <- c("Hello you! Too bad you are not here")
#' my_dict <- c("Bad", "good")
#' count_lexicon(my_txt, my_dict)
#' 1
count_lexicon <- function(txt, lexicon){

  txt <- tolower(txt)
  lexicon <- tolower(lexicon)
  lexicon_regex <- paste0("^", lexicon, "$", collapse = "|")
  string_in_words <- unlist(stringr::str_split(txt, pattern = stringr::boundary("word")))
  pattern_detected_in_string_count <- sum(stringr::str_detect(string_in_words, pattern = lexicon_regex))
  return(pattern_detected_in_string_count)
}


# count_lexicon(txt = dummy_text$text[3], lexicon = sentiws$word)