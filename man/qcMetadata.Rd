% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_neon_data.R
\name{qcMetadata}
\alias{qcMetadata}
\title{QC Sequence Metadata}
\usage{
qcMetadata(
  metadata,
  outDir = NULL,
  pairedReads = "Y",
  rmDupes = TRUE,
  rmFlagged = "N",
  verbose = FALSE
)
}
\arguments{
\item{metadata}{The output of \code{\link{downloadSequenceMetadata}}. Must be provided as either the data.frame returned by \code{\link{downloadSequenceMetadata}} or as a filepath to the csv file produced by \code{\link{downloadSequenceMetadata}}.}

\item{outDir}{Directory where QC'd metadata will be saved By default (NULL), QC'd metadata will be saved to file.path(NEONMICROBE_DIR_SEQMETA(), "qc_metadata")}

\item{pairedReads}{"Y" (default) or "N". Should the forward reads for a sample be removed if the corresponding reverse read is missing? If "Y", then only samples that have both the forward (R1) and reverse (R2) reads will be retained.}

\item{rmDupes}{TRUE (default) or FALSE. Should records with duplicated dnaSampleIDs be removed? If TRUE, then only the first records encountered for a particular dnaSampleID will be retained.}
}
\value{
QC'd dataframe is returned as an object and saved as csv file.
}
\description{
Performs basic QAQC checks on sequence metadata prior to downloading sequence data and performing bioinformatics processing.
Running this function will remove metadata records for samples that do not meet user specifications. This will reduce the number of sequence files that are downloaded to only those that will be used for analysis, thereby saving file space and reducing download times.
}
