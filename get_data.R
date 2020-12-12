################################################################################
# READ ME
################################################################################
# CAUTION:
#  Running this file in R Studio is not recommended as it fails to download the 
#  file. Instead source this script from within R console.

# VERSIONING: 
#
#  R          = 4.0.3
#  R Studio   = 1.4.938

# DESCRIPTION: 
#
#  This script executes only the following instructions in that order.
#
#  1. Downloads the zip file from,
#     "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#  2. Extracts the zipped file

# RESULT:   
#
#  The result of running this script would be extracted UCI HAR Dataset.
################################################################################

################################################################################
# SANITY CHECK
################################################################################
if (dir.exists("UCI HAR Dataset")) {
  stop("Data-set already downloaded!") 
}

message("Starting to download the dataset")

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "uci-har-data.zip")

message("Dataset downloaded to file, `uci-har-data.zip`")

unzip("uci-har-data.zip")

message("Dataset extracted in the directory `UCI HAR Dataset")