#' A function to plot 2 png images as one in a knitr chunk
#'
#' \code{comb2pngs} combines to png images into one, and then plots the combined image.
#'
#' The code of this function was inspired by code from Ben
#'     at \url{https://stackoverflow.com/questions/25415365/insert-side-by-side-png-images-using-knitr}
#'
#' @param imgs vector of image file names
#' @param bottom_text caption text appearing below the figure
#' @return plots images in knitr chunk


#' @export
comb2pngs <- function(imgs, bottom_text = NULL){
  img1 <-  grid::rasterGrob(as.raster(png::readPNG(imgs[1])),
                            interpolate = FALSE)
  img2 <-  grid::rasterGrob(as.raster(png::readPNG(imgs[2])),
                            interpolate = FALSE)
  gridExtra::grid.arrange(img1, img2, ncol = 2, bottom = bottom_text)
}