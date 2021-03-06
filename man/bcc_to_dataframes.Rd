% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rcc_to_dataframes.R
\name{bcc_to_dataframes}
\alias{bcc_to_dataframes}
\title{produce list of data.frames for storage of BiocCheck::BiocCheck results in SQLite}
\usage{
bcc_to_dataframes(bcclist)
}
\arguments{
\item{bcclist}{list of results of BiocCheck::BiocCheck, must be named with names of
packages as element names}
}
\description{
produce list of data.frames for storage of BiocCheck::BiocCheck results in SQLite
}
\examples{
data(demo_bccheck_out)
dfs = bcc_to_dataframes(demo_bccheck_out)
names(dfs)
rownames(dfs[[1]])
}
