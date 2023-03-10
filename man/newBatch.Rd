% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch_management.R
\name{newBatch}
\alias{newBatch}
\title{Create New Processing Batch}
\usage{
newBatch(seqmeta_file, batch_id = NULL, batches_dir = NULL, overwrite = FALSE)
}
\arguments{
\item{seqmeta_file}{Character string. File path to the sequence metadata to associate with this processing batch. Once set, this cannot be changed except by overwriting this batch.}

\item{batch_id}{Character string. Unique ID to use for the new processing batch.}

\item{batches_dir}{Directory where batch-specific directories are saved. By default (NULL), saves in NEONMICROBE_DIR_BATCHES().}

\item{overwrite}{Default FALSE. If processing batch already exists in the specified directory, whether to overwrite it.}
}
\value{
No value returned
}
\description{
Creates and switches to a new processing batch for enhancing the
reproducibility of NEON soil microbe marker gene sequence workflows.
Set batch processing parameters with \code{\link{setBatchParam}}, or
view them with \code{\link{getBatchParam}}.
}
\examples{
\dontrun{
newBatch("data/sequence_metadata/mmg_soilMetadata_ITS_2021-03-08134134.csv") # creates new batch based on timestamp
newBatch("data/sequence_metadata/mmg_soilMetadata_ITS_2021-03-08134134.csv", batch_id="abc") # creates new batch based on user-specified name
}
}
