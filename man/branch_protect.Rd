% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/branch_protect.R
\name{branch_protect}
\alias{branch_protect}
\title{Protect branch}
\usage{
branch_protect(repo, branch = "master")
}
\arguments{
\item{repo}{github repository address in \code{owner/repo} format}

\item{branch}{name of the branch to protect}
}
\description{
`branch_protect`` turns on protection for the specified branch. See
\url{https://help.github.com/en/articles/about-protected-branches} for more details
on what this changes.
}
