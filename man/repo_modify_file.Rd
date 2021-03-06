% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/repo_modify_file.R
\name{repo_modify_file}
\alias{repo_modify_file}
\title{Modify a file within a repository}
\usage{
repo_modify_file(
  repo,
  path,
  pattern,
  content,
  method = c("replace", "before", "after"),
  all = FALSE,
  message = "Modified content",
  branch = "master"
)
}
\arguments{
\item{repo}{Character. Address of repository in \code{owner/name} format.}

\item{path}{Character. File's path within the repository.}

\item{pattern}{Character. Regex pattern.}

\item{content}{Character. Content to be added to the file.}

\item{method}{Character. Should the content \code{replace} the matched pattern or be inserted \code{before} or \code{after} the match.}

\item{all}{Character. Should all instances of the pattern be modified (\code{TRUE}) or just the first (\code{FALSE}).}

\item{message}{Character. Commit message.}

\item{branch}{Character. Name of branch to use, defaults to "master".}
}
\description{
Modify a file within a repository
}
