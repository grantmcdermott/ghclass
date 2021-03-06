% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repo_branches.R
\name{repo_branches}
\alias{repo_branches}
\title{Get repository branches}
\usage{
repo_branches(repo, filter = NULL, exclude = FALSE)
}
\arguments{
\item{repo}{character, a single GitHub repository address in \code{owner/repo} format}

\item{filter}{character, a regex pattern for matching (or excluding) branches.}

\item{exclude}{logical, should entries matching the regex be excluded or included.}
}
\description{
\code{repo_branches} returns a (filtered) vector of branches for the current repository.
}
