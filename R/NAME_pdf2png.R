#' Convert pdf file to png file, with white space cropped
#'
#' converts all pdfs in the path to png
#' crops whites space
#' tries to maintain high quality
#' calls image magick convert

#' @param pdf_path path to folder where to find pdf images
#' @importFrom stringr str_c str_replace


#' @export
pdf2png <- function(pdf_path){

  # converts all pdfs in the path to png
  # crops whites space
  # tries to maintain high quality
  # calls image magick convert


  pdf_files <- list.files(path = pdf_path,
                          pattern = "*.pdf")

  stopifnot(length(pdf_files) > 0)

  pdf_files_with_path <- stringr::str_c(pdf_path, pdf_files)

  output_files <- stringr::str_replace(pdf_files_with_path, ".pdf", ".png")

  for (i in seq_along(pdf_files)){

    cat(paste0(pdf_files[i]), "\n")
    convert_string <- paste0("convert -density 150 -trim -quality 100 -sharpen 0x1.0 -verbose ",
                             pdf_files_with_path[i], " ",
                             output_files[i])
    system(convert_string)
  }

}  # eof








