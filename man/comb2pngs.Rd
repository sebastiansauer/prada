% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NAME_comb2pngs.R
\name{comb2pngs}
\alias{comb2pngs}
\title{A function to plot 2 png images as one in a knitr chunk}
\usage{
comb2pngs(imgs, bottom_text = NULL)
}
\arguments{
\item{imgs}{vector of image file names}

\item{bottom_text}{caption text appearing below the figure}
}
\value{
plots images in knitr chunk
}
\description{
\code{comb2pngs} combines to png images into one, and then plots the combined image.
}
\details{
The code of this function was inspired by code from Ben Bolker at \url{https://stackoverflow.com/questions/25415365/insert-side-by-side-png-images-using-knitr}
}
