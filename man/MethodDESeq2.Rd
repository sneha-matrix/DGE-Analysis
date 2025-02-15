% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MethodDESeq2.R
\name{MethodDESeq2}
\alias{MethodDESeq2}
\title{DESeq2 method}
\usage{
MethodDESeq2(count.table, design.matrix)
}
\arguments{
\item{count.table}{count table}

\item{design.matrix}{design matrix}
}
\value{
data.frame of differential gene expression quantification by Voom
}
\description{
DESeq2 method
}
\examples{

data("count.table")
design <- data.frame("trt" = colnames(count.table))
rownames(design) <- design$trt
design$trt <- as.integer(grepl("T",design[,1]))
design$trt <- paste0("C",design$trt)

DESeq2.DGE <- MethodDESeq2(count.table = count.table, design.matrix = design)
}
