% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NAME_check_missing_packages.R
\name{check_missing_packages}
\alias{check_missing_packages}
\title{Check which packages are missing}
\usage{
check_missing_packages(install_missing_packages = FALSE)
}
\arguments{
\item{install_missing_packages}{should missing packages be installed? Defaults to no (lgl)}
}
\value{
string vector of missing packages
}
\description{
Checks which packages are used in a folder/R project but are not installed locally
}
\details{
This function checks which R packages are called by the function `library` in any script file (.r, .rmd, .qmd) in the local working directory. In requested by the user, the missing packages are installed from CRAN. In any case, the difference between the packages callled in the project folder and the packages installed are returned.
}
\examples{
\dontrun{install_missing_packages()}
}
