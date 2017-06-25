#' Results from a survey on extraversion
#'
#' This dataset provides results from a survey on extraversion. Subjects
#' were students participating in a statistics class at FOM University of Applied Sciences.
#' Student with different majors participated in the study with the majority coming from psychology majors.
#' The study was intented primarily as an educational endevor. For example, variables with different
#' scale levels (nominal, metric) were included. However, different aspect of extraverion
#' were included to test some psychometric assumptions.
#' For example, one item approaches to extraversion are included.
#'
#'
#'
#'
#' @format A data frame containing 501 rows and 28 columns
#' \describe{
#'   \item{row_number}{Integer. Row number}
#'   \item{timestamp}{Chr. Date and Time in German format}
#'   \item{code}{(Chr. Pseudonymous code of each participant}
#'   \item{i01}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i01}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i02r}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i03}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i04}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
 #'   \item{i05}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
 #'   \item{i06r}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i07}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i08}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i09}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{i10}{Int. Extraversion items 1-10. "r" indicates that this item has been recoded (reverserd). Likert scales from 1 (do not agree) to 4 (fully agree)}
#'   \item{n_facebook_friends}{Int. Count of self-reported Facebook friends}
#'   \item{n_hangover}{Int. Count of self-reported hangovers in the last 12 months}
#'   \item{age}{Int. Age}
#'   \item{sex}{Int. Sex}
#'   \item{extra_single_item}{Int. Self-report on extraversion using a single item approach, ranging from rom 1 (do not agree) to 4 (fully agree)}
#'   \item{time_conversation}{Num. Self-reported time in minutes to get into a conversation at a party. Assumed to be indicator of extraversion}
#'   \item{presentation}{Chr. Would you volunteer to give a speech at a convention? ("ja" - yes; "nein" - no)}
#'   \item{n_party}{Int. Self-reported numbers of party attended in the last 12 months}
#'   \item{clients}{Chr. Self-reported frequency of being in contact with clients at work}
#'   \item{extra_vignette}{Chr. Self-reported fit to extraversion description (fit vs. non-fit)}
#'   \item{prop_na_per_row}{Num. Proportion of NAs per row}
#'   \item{extra_mean}{Num. Mean of 10 extraversion items}
#'   \item{extra_median}{Num. Median of 10 extraversion items}
#'   \item{client_freq}{Int. Same as 'clients' but answer in numeric form}
#'  }
#' @details See survey here \url{https://goo.gl/forms/B5bparAu8uR7T1c03}. Items of the survey have changed over time. Only the most recent version of the survey is online.
#' @source Survey conducted at the Business Psychology lab at FOM University of Applied Sciences from 2015 to April 2017
#' @examples


"extra"