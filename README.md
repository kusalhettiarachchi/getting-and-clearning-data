# Getting-and-Cleaning-Data-Assignment
***  

## About this repository 
 
This repository was created for the peer-graded assignment of: 

> Course 3: Getting And Cleaning Data, 
> from Data Science Specialization, 
> by Johns Hopkins University, 
> on coursera  

The transformation script, `run_analysis.R` is able to run, 
as far as the `UCI HAR Dataset` is present in the working
directory and performs the following 5 steps:

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
 
This script transforms the original `UCI HAR Dataset` to `tidy_data.txt`.
The code is well commented and self explanatory.
    
### tidy_data.txt 
 
The output of runnig the script `run_analysis.R`.
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

The code book contains information on the 'tidy_data' dataset, variables included in it, and the orignal dataset.
 
