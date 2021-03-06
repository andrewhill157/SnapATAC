% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/findDARs.R
\name{findDAR}
\alias{findDAR}
\title{Identifiy Differential Accessible Regions (DARs)}
\usage{
findDAR(obj, mat, cluster.pos, cluster.neg, bcv, fdr, pvalue, test.method,
  seed.use)
}
\arguments{
\item{obj}{A snap object.}

\item{mat}{Matrix to use for finding differential features c("bmat", "pmat", "gmat").}

\item{cluster.pos}{Cluster to identify DAR markers.}

\item{cluster.neg}{Cluster used as negative control compare with cluster.pos [NULL].
If cluster.neg is NULL, runFindDARs will automatically identifies background cells 
by finding those that are closest to cluster.pos cells as a local background.}

\item{bcv}{Biological coefficient of variation. Typical values for the common BCV 
(square-rootdispersion) for datasets arising from well-controlled experiments are 
0.4 for human data, 0.1 for data on genetically identical model organisms or 0.01 
for technical replicates.}

\item{fdr}{False discovery rate (FDR) [5e-2].}

\item{pvalue}{Pvalue [1e-2].}

\item{test.method}{Test method for differential analysis c("exactTest", "LRT", "QLF").}

\item{seed.use}{Random seeds.}
}
\description{
This function takes a snap object and finds differentially 
accessible regions (DARs) that define clusters.
}
\examples{
data(demo.sp);
idy = findDAR(
obj=demo.sp, 
 mat="pmat", 
 cluster.pos=1, 
 bcv=0.1, 
 fdr=0.01, 
 test.method="exactTest", 
 seed.use=10
 );

}
