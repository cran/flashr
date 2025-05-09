% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_functions.R
\name{extract_functions}
\alias{extract_functions}
\title{Extract function calls from character vector of R code}
\usage{
extract_functions(code, duplicates = TRUE)
}
\arguments{
\item{code}{Object that contains R code.}

\item{duplicates}{Logical indicating whether to include duplicates of
functions or whether to remove duplicates (default is TRUE, which includes
duplicates).}
}
\value{
Returns character vector of function names without parentheses (e.g.,
it returns "library" rather than "library()") included in R code.
}
\description{
This function finds all of the R functions in a character vector of R code.
For R scripts, first use \code{\link[=readLines]{readLines()}} or \code{\link[readr:read_file]{readr::read_file()}} to import
the script into a character vector. For R Markdown or Quarto documents,
first use \code{\link[=extract_code]{extract_code()}} to find all of the R code in code blocks. The
character vector can then be passed to \code{extract_functions()} to find all of
the functions. By default, all instances of functions are returned. To omit
duplicate functions, set \code{duplicates = FALSE}.
}
\note{
This function is adapted from one Yihui Xie posted at
\url{https://yihui.org/en/2023/01/func-call/}.
}
\examples{
extract_functions(extract_code(
  "https://raw.githubusercontent.com/JeffreyRStevens/flashr/refs/heads/main/README.Rmd"
))
}
\seealso{
Other functions for extracting code and functions: 
\code{\link{build_functions_df}()},
\code{\link{extract_code}()}
}
\concept{functions for extracting code and functions}
