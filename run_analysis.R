################################################################################
# READ ME
################################################################################

# REQUIREMENTS: 
#
#  Please make sure that a folder with name `UCI HAR Dataset` exists in the 
#  directory. If not, this data-set can be downloaded from the link, 
#  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


# VERSIONING: 
#
#  R          = 4.0.3
#  R Studio   = 1.4.938
#  dplyr      = 1.0.2

# DESCRIPTION: 
#
#  This script executes only the following instructions in that order.
#
#  1. Merges the training and the test sets to create one data set.
#  2. Extracts only the measurements on the mean and standard deviation for each 
#     measurement.
#  3. Uses descriptive activity names to name the activities in the data set
#  4. Appropriately labels the data set with descriptive variable names.
#  5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

# RESULT:   
#
#  The result of this script is a tidy data set saved in a file named 
#  'tidy_data.txt' in the working directory.
#  Load the data set using the command.
#  tidy_data <- read.table(file  = "tidy_data.txt",
#                                   header = TRUE, 
#                                   check.names = FALSE,
#                                   dec = ".",
#                                   colClasses = c("numeric", "factor",
#                                                 rep("numeric", 66)),
#                                   nrows = 180,
#                                   comments.char = "", 
#                                   quote = "")
#  More details on this data-set can be found at 'CodeBook.md' at the location,
#  <insert github link here>
################################################################################

################################################################################
# REQUIREMENT CHECK
################################################################################
if (!dir.exists("UCI HAR Dataset")) {
  stop("Data-set not found! 
       You can donwload it via, 
       https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
       Exiting without doing anything.") 
}

################################################################################
# LOADING PACKAGES
################################################################################
library(dplyr)

message("Starting to run the script")
################################################################################
# STEP 1. Merges the training and the test sets to create one data set.

# APPROACH:
#  
#  1. Column-wise aggregate subject, y values and x values in to train and test
#     sets.
#  2. Row-wise aggregate train and test sets

# OPTIMIZATION:
#  
#  By writing a function to read the 3 files and return only the result, we can 
#  save memory spent otherwise for storing the intermediate objects
################################################################################

# This function will return the column bound data-set and discard the 
# intermediate objects

aggregate_features <- function(files, columnClasses, rows) {
  cbind(
    read.table(files[[1]], colClasses=columnClasses[[1]], nrows=rows),
    read.table(files[[2]], colClasses=columnClasses[[2]], nrows=rows),
    read.table(files[[3]], colClasses=columnClasses[[3]], nrows=rows)
  )
}

# Read train data set
train <- aggregate_features(c("./UCI HAR Dataset/train/subject_train.txt", 
                              "./UCI HAR Dataset/train/y_train.txt",
                              "./UCI HAR Dataset/train/X_train.txt"),
                            c("integer", "integer", rep("numeric",561)),
                            7352)

# Read test data set
test <- aggregate_features(c("./UCI HAR Dataset/test/subject_test.txt", 
                             "./UCI HAR Dataset/test/y_test.txt",
                             "./UCI HAR Dataset/test/X_test.txt"),
                           c("integer", "integer", rep("numeric",561)),
                           2947)

# Row bind the train, test sets
merged_data <- rbind(train, test)

message("Step 1, completed.\nTrain and test sets merged successfully.")
################################################################################
# STEP 2. Extracts only the measurements on the mean and standard deviation for 
#         each measurement.
################################################################################

# Reading feature vector
features <- read.table("./UCI HAR Dataset/features.txt", 
                       colClasses = c("numeric", "character"),
                       nrows=561)

# Extracting only the indices of the mean and std features by using regex values 
# mean() and std()
extracted_feature_index <- grep("mean\\(\\)|str\\(\\)", 
                           features[[2]])

# Extracting columns for extracted features. Also adding the subject and y value
# to the extracted data set by adding 1and 2 to the extracted feature vector.
# Index values are shifted by 2 to accomodate this.
extracted_data <- merged_data[, c(1, 2, extracted_feature_index + 2)]

message("Step 2, completed.\nExtracted only the measurements on the mean and 
        standard deviation for each measurement successfully.")
################################################################################
# STEP 3. Uses descriptive activity names to name the activities in the data set
################################################################################

# Read activity labels
activitiy_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                             colClasses = c("numeric", "character"),
                             nrows=6)

# Factorize the activity column based on the activity_labels vector
extracted_data[[2]] <- factor(extracted_data[[2]], 
                              levels = activitiy_labels[[1]],
                              labels = activitiy_labels[[2]])

message("Step 3, completed.\nUsed descriptive activity names to name the 
        activities in the data set.")
################################################################################
# STEP 4. Appropriately labels the data set with descriptive variable names.
################################################################################

extracted_feature_names<-features[[2]][extracted_feature_index]

# Fix the typo
extracted_feature_names<-gsub(pattern = "BodyBody", 
                              replacement = "Body", 
                              extracted_feature_names)

# Remove () from feature names
extracted_feature_names<-gsub(pattern = "\\(\\)", 
                              replacement = "", 
                              extracted_feature_names)

# Standardize feature names. Replacing the PascalCase to kebab-case
extracted_feature_names<-tolower(gsub(pattern = "([A-W])", 
                                      replacement = "-\\1", 
                                      extracted_feature_names))

# Setting the names of the data set
tidy_data_complete <- extracted_data
names(tidy_data_complete) <- c("subject", "activity", extracted_feature_names)

message("Step 4, completed.\nAppropriately labeled the data set with descriptive
        variable names.")
################################################################################
# STEP 5. From the data set in step 4, creates a second, independent tidy data 
#         set with the average of each variable for each activity and each 
#         subject.
################################################################################

# Group operation
tidy_data <- tidy_data_complete %>%
                     group_by(subject, activity) %>%
                     summarise_all(funs(mean)) %>%
                     ungroup()

# Prefixing the feature names with `avg` except the first 2
names(tidy_data) <- c(names(tidy_data[c(1,2)]),
                              paste0("avg-", names(tidy_data[-c(1, 2)])))

# Writing data.
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

message("Step 5, completed.\nScript successfully run. Check the file 
        'tidy_data.txt'")