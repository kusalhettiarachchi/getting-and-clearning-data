# Getting-and-Cleaning-Data-Assignment
***  

## About this repository 
 
This repository was created for the peer-graded assignment of: 

> Course 3: Getting And Cleaning Data, 
> from Data Science Specialization, 
> by Johns Hopkins University, 
> on coursera  

The course is taught by: 
 
  - Jeff Leek, Phd 
  - Roger D. Peng, Phd
  - Brian Caffo, Phd
 
As put by the teachers of the course: 
 
> The purpose of the assignment is to demonstrate your ability to collect,
work with, and clean a data set. The goal is to prepare tidy data that can be
used for later analysis. 

The assignment asked to:

> You will be required to submit: 
> 
>   1. a tidy data set as described below 
>   2. a link to a Github repository with your script for performing
       the analysis, and 
>   3. a code book that describes the variables, the data, and any
       transformations or work that you performed to clean up the data
       called CodeBook.md. 
> 
> You should also include a README.md in the repo with your scripts. 
> This repo explains how all of the scripts work and how they are connected. 

and for the main script, 'run_analysis.R' the requirements was that it should
be able to run, as far as the 'UCI HAR Dataset' is present in the working
directory and to be able to perform the following 5 steps:

> 1. Merges the training and the test sets to create one data set. 
> 2. Extracts only the measurements on the mean and standard deviation for
each measurement. 
> 3. Uses descriptive activity names to name the activities in the data set 
> 4. Appropriately labels the data set with descriptive variable names. 
> 5. From the data set in step 4, creates a second, independent tidy data set
with the average of each variable for each activity and each subject. 

*** 
## Details on the files that exist in this repository  
 

### README.md 
This file tries to explain the purpose and the contents of the repository.

 
### run_analysis.R 
 
It is the main script of the repository. 
As it is described in 'CodeBook.md':

> In order to produce the 'tidy_data' table,
the script 
'[run_analysis.R](https://github.com/kusalhettiarachchi/getting-and-clearning-data/blob/main/run_analysis.R)' 
was created and used. 
> It performs the following tasks: 
>  
> #### Merges the training and the test sets to create one data set with target variables. 
>  
>  1. Binds these files, 
>       - UCI HAR Dataset/train/subject_train.txt 
>       - UCI HAR Dataset/train/X_train.txt 
>       - UCI HAR Dataset/train/y_train.txt 
> 
>  2. Binds these files, 
>       - UCI HAR Dataset/test/subject_test.txt 
>       - UCI HAR Dataset/test/X_test.txt 
>       - UCI HAR Dataset/test/y_test.txt 
>
>  3. Binds the data frames created for test and train set into one large
      dataset by rows.
>
> #### Extracts only the measurements on the mean and standard deviation for each measurement. 
> 
>  1. Finds the target features, which are the features with measurements
      about mean and standard deviation, and extracts them as well as those
      that indicate the 'subject' and 'activity' and creates a new data table
      only with the target variables. 
> 
> #### Uses descriptive activity names to name the activities in the data set.   
>
>  1. Replace the variable about activity, that contains integers from 1 to 6,
>     with a factor based on levels and labels contained in the
      'activity_labels' data file. 
> 
> #### Appropriately labels the data set with target variables with descriptive names. 
> 
>  1. Extracts the target variable names from 'features.txt'.
>  2. Corrects a typo that exists in some feature names, that is to replace
     'BodyBody' that appears in the names of some features with just 'Body'.
>  3. Removes the () from feature names.
>  4. Switches the feature names case from PascalCase to kebab-case.
>  5. Lowercases the feature names.
>  6. Creates a new tidy dataset with the appropriate labels for the variable
     names.
 
> #### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
>
>  1. Group the tidy data table created in step 4, by 'subject' and 'activity'. 
>  2. Summarize each variable to find the average for the grouped values. 
>  3. Ungroup the data table. 
>  4. Add descriptive names to the variables of the new tidy data table,
>     by adding the prefix 'Avrg-' in the names of the target feature averages.
>  5. Write the data in a text file in the present working directory,
>     by the command: 
>    
>     ```
>     write.table(tidy_data, "tidy_data.txt", row.names = FALSE) 
>     ```
    
### tidy_data.txt 
 
The tidy dataset that was produced by the script 'run_analysis.R',
which contains the averages of selected features from the original
'Human Activity Recognition Using Smartphones Dataset Version 1.0'.
The 
'[CodeBook.md](https://github.com/kusalhettiarachchi/getting-and-clearning-data/blob/main/CodeBook.md)' 
contains the details about the 'tidy_data' table.

To read the table back on R correctly, you can use the following command:
```   
tidy_data <- read.table(file  = "tidy_data.txt", 
                                header = TRUE, check.names = FALSE, dec = ".", 
                                colClasses = c("numeric", "factor", rep("numeric", 66)), 
                                nrows = 180, comment.char = "", quote = "") 
``` 
 
### CodeBook.md 

The code book contains information on the 'tidy_data' table.
It consists of the following: 
 
  0. Table of Contents 
  1. Information on 'tidy_data' data table 
     - Identifiers and averages of features 
     - Description for the variables of 'tidy_data' 
     - How to load 'tidy_data' in R
     - About 'tidy_data' table 
  2. The process by which the 'tidy_data' table was produced 
  3. Description of the features on which the averages were based 
     - information on how the features were produced from the raw data 
     - information on the collection of raw data 
     - About the original data set 
  4. License 
 
