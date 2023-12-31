% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addKEGG.R
\name{getMsigOrganism}
\alias{getMsigOrganism}
\title{Infer organism type for the gene set collection}
\usage{
getMsigOrganism(gsc, idType)
}
\arguments{
\item{gsc}{a GeneSetCollection object, containing MSigDB genesets in the form
of GeneSet objects.}

\item{idType}{a GSEABase::SymbolIdentifier or GSEABASE::EntrezIdentifier
object, representing the ID type inferred from the \code{\link[=getMsigIdType]{getMsigIdType()}}
function. Avoid providing this manually.}
}
\value{
a character, either "mm" (representing Mus musculus - mouse) or "hs"
(representing Homo sapiens - human).
}
\description{
Since both Human and Mouse MSigDB collections are hosted in this package,
this function infers the type of organism represented in a gene set
collection based on the gene IDs present. If not all gene IDs belong to the
same organism, the organism with more than 50\% gene IDs present in the
collection is returned. In any other case, the function returns an error.
}
\examples{
gsc <- getMsigdb()
id <- getMsigIdType(gsc)
getMsigOrganism(gsc, id)

}
