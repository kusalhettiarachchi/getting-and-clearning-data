# CODE BOOK for the 'tidy_data' data table. 
*** 
 
## Table of Contents  
 
  0. Table of Contents 
  1. Code Book
     - Data 
     - Variables
  2. Transformations
  3. Study Design
     - Original Data
     - Production of features from raw data  
     - Collection of raw data 
     - About the original data set 
 
 
*** 
## Code Book
 
### Data
 
The first 2 variables, 'subject' and 'activity',
can uniquely identify each row of the table. 
The rest 66 variables, are the averages for some selected features,
those which contain information on means and standard deviations,
from the original dataset:
'[Human Activity Recognition Using Smartphones Dataset Version 1.0](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)'.
 
 
### Variables
 
The following table describes all variables of the 'tidy_data' table. 
 
| Index |           Variables          |  Class  |  Range  | Description                                                                                               |
|-------|------------------------------| --------|---------|-----------------------------------------------------------------------------------------------------------|
|    1  | subject                      | integer |  1 - 30 | Identifies the human subject.                                                                             |
|    2  | activity                     | factor  |  1 -  6 | Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
|    3  | avg-t-body-acc-mean-x        | numeric | [-1, 1] | Time domain, Average of means for body acceleration on X axis.                                            |
|    4  | avg-t-body-acc-mean-y        | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Y axis.                                            |
|    5  | avg-t-body-acc-mean-z        | numeric | [-1, 1] | Time domain, Average of means for body acceleration on Z axis.                                            |
|    6  | avg-t-body-acc-std-x         | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on X axis.                              |
|    7  | avg-t-body-acc-std-y         | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Y axis.                              |
|    8  | avg-t-body-acc-std-z         | numeric | [-1, 1] | Time domain, Average of standard deviations for body acceleration on Z axis.                              |
|    9  | avg-t-gravity-acc-mean-x     | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on X axis.                                         |
|   10  | avg-t-gravity-acc-mean-y     | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Y axis.                                         |
|   11  | avg-t-gravity-acc-mean-z     | numeric | [-1, 1] | Time domain, Average of means for gravity acceleration on Z axis.                                         |
|   12  | avg-t-gravity-acc-std-x      | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on X axis.                           |
|   13  | avg-t-gravity-acc-std-y      | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Y axis.                           |
|   14  | avg-t-gravity-acc-std-z      | numeric | [-1, 1] | Time domain, Average of standard deviations for gravity acceleration on Z axis.                           |
|   15  | avg-t-body-acc-jerk-mean-x   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on X axis.                                |
|   16  | avg-t-body-acc-jerk-mean-y   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Y axis.                                |
|   17  | avg-t-body-acc-jerk-mean-z   | numeric | [-1, 1] | Time domain, Average of means for the jerk of body acceleration on Z axis.                                |
|   18  | avg-t-body-acc-jerk-std-x    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on X axis.                  |
|   19  | avg-t-body-acc-jerk-std-y    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Y axis.                  |
|   20  | avg-t-body-acc-jerk-std-z    | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of body acceleration on Z axis.                  |
|   21  | avg-t-body-gyro-mean-x       | numeric | [-1, 1] | Time domain, Average of means for angular velocity on X axis.                                             |
|   22  | avg-t-body-gyro-mean-y       | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Y axis.                                             |
|   23  | avg-t-body-gyro-mean-z       | numeric | [-1, 1] | Time domain, Average of means for angular velocity on Z axis.                                             |
|   24  | avg-t-body-gyro-std-x        | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on X axis.                               |
|   25  | avg-t-body-gyro-std-y        | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Y axis.                               |
|   26  | avg-t-body-gyro-std-z        | numeric | [-1, 1] | Time domain, Average of standard deviations for angular velocity on Z axis.                               |
|   27  | avg-t-body-gyro-jerk-mean-x  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on X axis.                                 |
|   28  | avg-t-body-gyro-jerk-mean-y  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Y axis.                                 |
|   29  | avg-t-body-gyro-jerk-mean-z  | numeric | [-1, 1] | Time domain, Average of means for the jerk of angular velocity on Z axis.                                 |
|   30  | avg-t-body-gyro-jerk-std-x   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on X axis.                   |
|   31  | avg-t-body-gyro-jerk-std-y   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.                   |
|   32  | avg-t-body-gyro-jerk-std-z   | numeric | [-1, 1] | Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.                   |
|   33  | avg-t-body-acc-mag-mean      | numeric | [-1, 1] | Time domain, Average of means for the magnitude of body acceleration.                                     |
|   34  | avg-t-body-acc-mag-std       | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of body acceleration.                       |
|   35  | avg-t-gravity-acc-mag-mean   | numeric | [-1, 1] | Time domain, Average of means for the magnitude of gravity acceleration.                                  |
|   36  | avg-t-gravity-acc-mag-std    | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of gravity acceleration.                    |
|   38  | avg-t-body-acc-jerk-mag-mean | numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of body accelaration.                            |
|   38  | avg-t-body-acc-jerk-mag-std  | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of body accelaration.              |
|   39  | avg-t-body-gyro-mag-mean     | numeric | [-1, 1] | Time domain, Average of means for the magnitude of angular velocity.                                      |
|   40  | avg-t-body-gyro-mag-std      | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of angular velocity.                        |
|   41  | avg-t-body-gyro-jerk-mag-mean| numeric | [-1, 1] | Time domain, Average of means for the magnitude of jerk, of the angular velocity.                         |
|   42  | avg-t-body-gyro-jerk-mag-std | numeric | [-1, 1] | Time domain, Average of standard deviations for the magnitude of jerk, of the angular velocity.           |
|   43  | avg-f-body-acc-mean-x        | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on X axis.                                       |
|   44  | avg-f-body-acc-mean-y        | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Y axis.                                       |
|   45  | avg-f-body-acc-mean-z        | numeric | [-1, 1] | Frequency domain, Average of means for body acceleration on Z axis.                                       |
|   46  | avg-f-body-acc-std-x         | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on X axis.                         |
|   47  | avg-f-body-acc-std-y         | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Y axis.                         |
|   48  | avg-f-body-acc-std-z         | numeric | [-1, 1] | Frequency domain, Average of standard deviations for body acceleration on Z axis.                         |
|   49  | avg-f-body-acc-jerk-mean-x   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on X axis.                       |
|   50  | avg-f-body-acc-jerk-mean-y   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Y axis.                       |
|   51  | avg-f-body-acc-jerk-mean-z   | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of the body acceleration on Z axis.                       |
|   52  | avg-f-body-acc-jerk-std-x    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on X axis.         |
|   53  | avg-f-body-acc-jerk-std-y    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Y axis.         |
|   54  | avg-f-body-acc-jerk-std-z    | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of the body acceleration on Z axis.         |
|   55  | avg-f-body-gyro-mean-x       | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on X axis.                            |
|   56  | avg-f-body-gyro-mean-y       | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Y axis.                            |
|   57  | avg-f-body-gyro-mean-z       | numeric | [-1, 1] | Frequency domain, Average of means for the jerk of angular velocity on Z axis.                            |
|   58  | avg-f-body-gyro-std-x        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.              |
|   59  | avg-f-body-gyro-std-y        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.              |
|   60  | avg-f-body-gyro-std-z        | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.              |
|   61  | avg-f-body-acc-mag-mean      | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of body acceleration.                                |
|   62  | avg-f-body-acc-mag-std       | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of body acceleration.                  |
|   63  | avg-f-body-acc-jerk-mag-mean | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of body acceleration.                       |
|   64  | avg-f-body-acc-jerk-mag-std  | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of jerk, of body acceleration.         |
|   65  | avg-f-body-gyro-mag-mean     | numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of angular velocity.                                 |
|   66  | avg-f-body-gyro-mag-std      | numeric | [-1, 1] | Frequency domain, Average of standard deviations for the magnitude of angular velocity.                   |
|   67  | avg-f-body-gyro-jerk-mag-mean| numeric | [-1, 1] | Frequency domain, Average of means for the magnitude of jerk, of angular velocity.                        |
|   68  | avg-f-body-gyro-jerk-mag-std | numeric | [-1, 1] | Frequency domain, Average of standard deviation for the magnitude of jerk, of angular velocity.           |

  
*** 
## Transformations  

In order to produce the 'tidy_data' table,
the script 
'[run_analysis.R](https://github.com/kusalhettiarachchi/getting-and-clearning-data/blob/main/run_analysis.R))'
was created and used. 
It performs the following tasks: 
 
#### Merges the training and the test sets to create one data set with target variables. 
 
  1. Binds these files,
       - UCI HAR Dataset/train/subject_train.txt
       - UCI HAR Dataset/train/X_train.txt
       - UCI HAR Dataset/train/y_train.txt.
      
  2. Binds these files,
       - UCI HAR Dataset/test/subject_test.txt
       - UCI HAR Dataset/test/X_test.txt
       - UCI HAR Dataset/test/y_test.txt.
      
  3. Binds the data frames created for test and train set into one large dataset
     by rows.

#### Extracts only the measurements on the mean and standard deviation for each measurement. 
 
  1. Finds the target features, which are the features with measurements
     about mean and standard deviation, and extracts them as well as those
     that indicate the 'subject' and 'activity' and creates a new data table
     only with the target variables. 
 
#### Uses descriptive activity names to name the activities in the data set.   

  1. Replace the variable about activity, that contains integers from 1 to 6,
     with a factor based on levels and labels contained in the 'activity_labels'
     data file. 
 
#### Appropriately labels the data set with target variables with descriptive names. 
 
  1. Extracts the target variable names from 'features.txt'.
  2. Corrects a typo that exists in some feature names, that is to replace
     'BodyBody' that appears in the names of some features with just 'Body'.
  3. Removes the () from feature names.
  4. Switches the feature names case from PascalCase to kebab-case.
  5. Lowercases the feature names.
  6. Creates a new tidy dataset with the appropriate labels for the variable
     names. 
 
#### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


  1. Group the tidy data table created in step 4, by 'subject' and 'activity'. 
  2. Summarize each variable to find the average for the grouped values. 
  3. Ungroup the data table. 
  4. Add descriptive names to the variables of the new tidy data table,
     by adding the prefix 'avg-' in the names of the target feature averages.
  5. Write the data in a text file in the present working directory,
     by the command: 
    
     ```
     write.table(tidy_data, "tidy_data.txt", row.names = FALSE) 
     ```
    
***
## Study Design

### Original Dataset 
 
> Human Activity Recognition Using Smartphones Dataset Version 1.0 
>  
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. 
> Smartlab - Non Linear Complex Systems Laboratory 
> DITEN - Universit? degli Studi di Genova. 
> Via Opera Pia 11A, I-16145, Genoa, Italy. 
> activityrecognition@smartlab.ws 
> www.smartlab.ws 
 
More information about the original data set can be found
[here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
 
### Production of features from raw data 
 
Quting the 'features_info.txt' file of the original data set:
 
> The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order low pass
Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass
Butterworth filter with a corner frequency of 0.3 Hz.
>
> Subsequently, the body linear acceleration and angular velocity were derived
in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
Also the magnitude of these three-dimensional signals were calculated using
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag).
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag.
(Note the 'f' to indicate frequency domain signals).
>
>These signals were used to estimate variables of the feature vector
for each pattern: 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
>
> tBodyAcc-XYZ  
> tGravityAcc-XYZ  
> tBodyAccJerk-XYZ  
> tBodyGyro-XYZ  
> tBodyGyroJerk-XYZ  
> tBodyAccMag  
> tGravityAccMag  
> tBodyAccJerkMag  
> tBodyGyroMag  
> tBodyGyroJerkMag  
> fBodyAcc-XYZ  
> fBodyAccJerk-XYZ  
> fBodyGyro-XYZ  
> fBodyAccMag  
> fBodyAccJerkMag  
> fBodyGyroMag  
> fBodyGyroJerkMag  
>
> The set of variables that were estimated from these signals are: 
>
> mean(): Mean value  
> std(): Standard deviation  
> mad(): Median absolute deviation  
> max(): Largest value in array  
> min(): Smallest value in array  
> sma(): Signal magnitude area  
> energy(): Energy measure. Sum of the squares divided by the number of values.  
> iqr(): Interquartile range  
> entropy(): Signal entropy  
> arCoeff(): Autorregresion coefficients with Burg order equal to 4  
> correlation(): correlation coefficient between two signals  
> maxInds(): index of the frequency component with largest magnitude  
> meanFreq(): Weighted average of the frequency components to obtain a mean
frequency  
> skewness(): skewness of the frequency domain signal  
> kurtosis(): kurtosis of the frequency domain signal  
> bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT
of each window.  
> angle(): Angle between to vectors.  
>  
> Additional vectors obtained by averaging the signals in a signal window
sample. These are used on the angle() variable:  
>  
> gravityMean  
> tBodyAccMean  
> tBodyAccJerkMean  
> tBodyGyroMean  
> tBodyGyroJerkMean  
> 

### Collection of raw data
 
Quoting the 'README.txt' file of the original data set:
   
> The experiments have been carried out with a group of 30 volunteers within
an age bracket of 19-48 years. Each person performed six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded
accelerometer and gyroscope, we captured 3-axial linear acceleration and
3-axial angular velocity at a constant rate of 50Hz. The experiments have been
video-recorded to label the data manually. The obtained dataset has been
randomly partitioned into two sets, where 70% of the volunteers was selected
for generating the training data and 30% the test data. 
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows of
2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal,
which has gravitational and body motion components, was separated using
a Butterworth low-pass filter into body acceleration and gravity.
The gravitational force is assumed to have only low frequency components,
therefore a filter with 0.3 Hz cutoff frequency was used. From each window,
a vector of features was obtained by calculating variables from the time and
frequency domain. See 'features_info.txt' for more details. 
> 
> #### For each record it is provided: 
> 
> - Triaxial acceleration from the accelerometer (total acceleration)
and the estimated body acceleration. 
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment. 
