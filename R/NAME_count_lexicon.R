#' Count hits in a lexicon
#'
#' Counts the number of times a string is detected in a lexicon,
#' according to a (regex) pattern
#'
#' @param txt String in which the occurences of words from lexicon should be counted
#' @param lexicon vector of target words which should be counted in \code{text}
#'
#' @return string
#'
#' @examples
#' my_txt <- c("Hello you! Too bad you are not here")
#' my_dict <- c("Bad", "good")
#' count_lexicon(my_txt, my_dict)
#' 1
#' @export
count_lexicon <- function(txt, lexicon){
  # convert strings to lower letters:
  txt <- tolower(txt)
  lexicon <- tolower(lexicon)

  # build regex query:
  lexicon_regex <- paste0("^", lexicon, "$", collapse = "|")

  # split string into words:
  string_in_words <- unlist(stringr::str_split(txt, pattern = stringr::boundary("word")))

  # search:
  pattern_detected_in_string_count <- sum(stringr::str_detect(string_in_words, pattern = lexicon_regex))

  # return:
  return(pattern_detected_in_string_count)
}


