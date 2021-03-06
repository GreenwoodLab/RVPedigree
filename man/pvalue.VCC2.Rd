% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pvalue.VCC2.R
\name{pvalue.VCC2}
\alias{pvalue.VCC2}
\title{Compute the p-value for the VC-C2 method}
\usage{
pvalue.VCC2(P, G, W, Nperm, n, pedigree, haplotypes, generation.id,
  Ncores = 1)
}
\arguments{
\item{P}{a matrix which can be obtained as output of the function
\code{\link{Preparation.VCC}}.}

\item{G}{the genotype matrix}

\item{Nperm}{(integer) The number of permutations to be done to
calculate the empirical p-value if the VCC2 or VCC3 method is
used. For other methods this parameter is ignored (default:
100).}

\item{n}{Integer, the number of samples}

\item{pedigree}{a pedigree as output by
\code{\link{read.pedigree}}. This is a data frame consisting of
four columns (family ID, individual ID, father ID and mother ID)
as use in the traditional linkage format and e.g. Plink files.}

\item{haplotypes}{a matrix of the haplotypes of the individuals}

\item{generation.id}{a vector of length(sample size) which
indicates if the subject is founder (\code{generation.id=0}),
a child from first generation (\code{generation.id=1}), a
child from second generation (\code{generation.id=2}), etc.
This vector can be calculated by the
\code{kinship2::kindepth()} function.}

\item{Ncores}{(integer) Number of processor (CPU) cores to be used
in parallel when doing the permutations to determine the
p-value (default: 1).}
}
\value{
a list with the score and p-value for the VC-C2
    association test on the given region. The list contains the
    elements \code{score} and \code{p.value}. This is a
    permutation-based p-value.
}
\description{
Compute the p-value for the VC-C2 method
}
\author{
Karim Oualkacha

M'Hamed Lajmi Lakhal-Chaieb
}
\seealso{
\code{\link{pvalue.VCC1}}, \code{\link{pvalue.VCC3}}
}
\keyword{internal}

