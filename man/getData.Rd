% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getData.R
\name{getData}
\alias{getData}
\title{Get coordinated data from a compressed file for RIVER}
\usage{
getData(filename = system.file("extdata", "simulation_RIVER.gz", package =
  "RIVERpkg"), ZscoreThrd = 1.5)
}
\arguments{
\item{filename}{A full path of a compressed input file that consists of all
samples in rows and subject ID, gene name, genomic features, z-scores
of corresponding gene expression, and a list of N2 pairs in columns
from left to right. In N2 pairs, samples not paired with othersamples
have NA while two samples sharing same rare variant near a gene have
same pre-assigend integers.}

\item{ZscoreThrd}{A |Z-score| threshold for defining outlier status of samples}
}
\value{
dataInput An object of ExpressionSet class which contains input data
        required for all functions in RIVERpkg including genomic features,
        outlier status, and N2 pairs.
}
\description{
\code{getData} extracts genomic features, z-scores of gene expression, and
        N2 pairs having same rare variants from an imported compressed data,
        computes outlier status from z-scores given a z-score threshold and
        coordinates the genomic features, outlier status, and a list of N2
        pairs into ExpressionSet class having standardized data structure.
}
\examples{
InputData = getData(filename=system.file("extdata", "simulation_RIVER.gz",
        package = "RIVERpkg"), ZscoreThrd=1.5)

}
\author{
Yungil Kim, \email{ipw012@gmail.com}
}
\seealso{
\code{\link[data.table]{fread}}, \code{\link[Biobase]{ExpressionSet}},
}

