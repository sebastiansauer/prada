#' Cleans social media text
#'
#' Removes typical artifacts in social media text such as "rt", "http",
#' but also spaces. No external packages are needed.
#'
#' Expects UTF-8 as input format.
#'
#' @param x character (not vectorized)
#' @param ascify should non-ASCII glyphs should be removed? (Defaults to FALSE)
#'
#' @return cleaned character
#' @export
#'
#' @examples
#' clean_text("  Hello http @sesa rt 123  ")
clean_text = function(x, ascify = FALSE)
{
  x = tolower(x)                 # alles in Kleinbuchstaben umwandeln
  x = gsub("rt", "", x)          # rt entfernen
  x = gsub("@\\w+", "", x)       # alle @ + Namen entfernen
  x = gsub("[[:punct:]]", "", x) # Satzzeichen entfernen
  x = gsub("[[:digit:]]", "", x) # Zahlen entfernen
  x = gsub("http\\w+", "", x)    # Links entfernen
  x = gsub("http", "", x)        # http entfernen wenn es alleine steht
  x = gsub("[\\t]+", " ", x) # doppelte Leerzeichen und Tabs entfernen
  x = gsub("^\\s+", "", x)          # Leerzeichen am Anfang entfernen
  x = gsub("\\s+$", "", x)          # Leerzeichen am Ende entfernen

  if (ascify) x <- iconv(x, from="UTF-8", to="ASCII", sub="")

  return(x)
}
