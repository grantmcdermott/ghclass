% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peer.R
\name{peer_form_create_review}
\alias{peer_form_create_review}
\title{Create reviewer feedback form}
\usage{
peer_form_create_review(
  n,
  title = "Reviewer feedback form",
  fname = "feedback_blank_review",
  output = "github_document",
  write_rmd = TRUE,
  overwrite = FALSE,
  double_blind = TRUE
)
}
\arguments{
\item{n}{Numerical. Number of score fields to be included in the YAML of the .Rmd file.}

\item{title}{Character. Title of form, defaults to "Reviewer feedback form."}

\item{fname}{Character. File name of RMarkdown document to be written to memory, defaults to \code{feedback_blank_review}.}

\item{output}{Character. Output parameter for \code{.Rmd} file, defaults to \code{github_document}.}

\item{write_rmd}{Logical. Whether the feedback form should be saved to a \code{.Rmd} file in the current working directory, defaults to \code{TRUE}.}

\item{overwrite}{Logical. Should existing file or files with same name be overwritten, defaults to \code{FALSE}.}

\item{double_blind}{Logical. If \code{double_blind = TRUE}, the YAML will contain an \code{author} field, defaults to \code{TRUE}.}
}
\description{
\code{peer_form_create_review} creates blank feedback forms for reviewers based on the user-specified number of questions.
}
\examples{
\dontrun{
peer_form_create_review(5, "Reviewer feedback for HW2", "rfeedback_hw2_blank")
}

}
\seealso{
Other peer review functions: 
\code{\link{peer_assign}()},
\code{\link{peer_file_add_aut}()},
\code{\link{peer_file_add_rev}()},
\code{\link{peer_form_create_rating}()},
\code{\link{peer_init}()},
\code{\link{peer_return}()},
\code{\link{peer_roster_create}()},
\code{\link{peer_score_rating}()},
\code{\link{peer_score_review}()}
}
\concept{peer review functions}
