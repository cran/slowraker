% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rbind-rakelist.R
\name{rbind_rakelist}
\alias{rbind_rakelist}
\title{rbind a rakelist}
\usage{
rbind_rakelist(rakelist, doc_id = NULL)
}
\arguments{
\item{rakelist}{An object of class \code{rakelist}, which you create by
calling \code{\link{slowrake}}.}

\item{doc_id}{An optional vector of document IDs, which should be the same
length as \code{rakelist}. These IDs will be added to the resulting data
frame.}
}
\value{
A single data frame which contains all documents' keywords. The
  \code{doc_id} column tells you which document a keyword was found in.
}
\description{
rbind a rakelist
}
\examples{
rakelist <- slowrake(txt = dog_pubs$abstract[1:2])

# Without specifying doc_id:
head(rbind_rakelist(rakelist = rakelist))

# With specifying doc_id:
head(rbind_rakelist(rakelist = rakelist, doc_id = dog_pubs$doi[1:2]))
}
