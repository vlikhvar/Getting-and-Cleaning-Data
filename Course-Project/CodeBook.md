Codebook of bodyMovement.csv dataset
================================

The dataset contains 180 rows (30 subjects * 6 activities) and 68 columns (2 categorical and 66 continuous variables). 

The categorical variables:

    1 subject: Subject ID (1-30);
    2 activity: Activity name ("laying", "sitting", "standing", "walking", "walkingDownstairs", "walkingUpstairs").

The continuous variables:


    1   freqBodyAccJerkMagMean      Average magnitude of frequency domain body acceleration Jerk signal
    2    freqBodyAccJerkMagStd      Standard deviation of magnitude of frequency domain body acceleration Jerk signal
    3     freqBodyAccJerkMeanX      Average frequency domain body acceleration Jerk signal (X axis)
    4     freqBodyAccJerkMeanY      Average frequency domain body acceleration Jerk signal (Y axis)
    5     freqBodyAccJerkMeanZ      Average frequency domain body acceleration Jerk signal (Z axis)
    6      freqBodyAccJerkStdX      Standard deviation of frequency domain body acceleration Jerk signal (X axis)
    7      freqBodyAccJerkStdY      Standard deviation of frequency domain body acceleration Jerk signal (Y axis)
    8      freqBodyAccJerkStdZ      Standard deviation of frequency domain body acceleration Jerk signal (Z axis)
    9       freqBodyAccMagMean      Average magnitude of frequency domain body acceleration signal
    10       freqBodyAccMagStd      Standard deviation of magnitude of frequency domain body acceleration signal
    11        freqBodyAccMeanX      Average frequency domain body acceleration signal (X axis)
    12        freqBodyAccMeanY      Average frequency domain body acceleration signal (Y axis)
    13        freqBodyAccMeanZ      Average frequency domain body acceleration signal (Z axis)
    14         freqBodyAccStdX      Standard deviation of frequency domain body acceleration signal (X axis)
    15         freqBodyAccStdY      Standard deviation of frequency domain body acceleration signal (Y axis)
    16         freqBodyAccStdZ      Standard deviation of frequency domain body acceleration signal (Z axis)
    17 freqBodyGyroJerkMagMean      Average magnitude of frequency domain angular velocity Jerk signal
    18  freqBodyGyroJerkMagStd      Standard deviation of magnitude of frequency domain angular velocity Jerk signal
    19     freqBodyGyroMagMean      Average magnitude of frequency domain angular velocity signal
    20      freqBodyGyroMagStd      Standard deviation of magnitude of frequency domain angular velocity signal
    21       freqBodyGyroMeanX      Average frequency domain angular velocity signal (X axis)
    22       freqBodyGyroMeanY      Average frequency domain angular velocity signal (Y axis)
    23       freqBodyGyroMeanZ      Average frequency domain angular velocity signal (Z axis)
    24        freqBodyGyroStdX      Standard deviation of frequency domain angular velocity signal (X axis)
    25        freqBodyGyroStdY      Standard deviation of frequency domain angular velocity signal (Y axis)
    26        freqBodyGyroStdZ      Standard deviation of frequency domain angular velocity signal (Z axis)
    27  timeBodyAccJerkMagMean      Average magnitude of time domain body acceleration  Jerk signal
    28   timeBodyAccJerkMagStd      Standard deviation of magnitude of time domain body acceleration Jerk signal
    29    timeBodyAccJerkMeanX      Average time domain body acceleration Jerk signal (X axis)
    30    timeBodyAccJerkMeanY      Average time domain body acceleration Jerk signal (Y axis)
    31    timeBodyAccJerkMeanZ      Average time domain body acceleration Jerk signal (Z axis)
    32     timeBodyAccJerkStdX      Standard deviation of time domain body acceleration Jerk signal (X axis) 
    33     timeBodyAccJerkStdY      Standard deviation of time domain body acceleration Jerk signal (Y axis)
    34     timeBodyAccJerkStdZ      Standard deviation of time domain body acceleration Jerk signal (Z axis)
    35      timeBodyAccMagMean      Average magnitude of time domain body acceleration signal
    36       timeBodyAccMagStd      Standard deviation of magnitude of time domain body acceleration signal
    37        timeBodyAccMeanX      Average time domain body acceleration signal (X axis)
    38        timeBodyAccMeanY      Average time domain body acceleration signal (Y axis)
    39        timeBodyAccMeanZ      Average time domain body acceleration signal (Z axis)
    40         timeBodyAccStdX      Standard deviation of time domain body acceleration signal (X axis)
    41         timeBodyAccStdY      Standard deviation of time domain body acceleration signal (Y axis)
    42         timeBodyAccStdZ      Standard deviation of time domain body acceleration signal (Z axis)
    43 timeBodyGyroJerkMagMean      Average magnitude of time domain angular velocity Jerk signal
    44  timeBodyGyroJerkMagStd      Standard deviation of magnitude of time domain angular velocity Jerk signal
    45   timeBodyGyroJerkMeanX      Average time domain angular velocity Jerk signal (X axis)
    46   timeBodyGyroJerkMeanY      Average time domain angular velocity Jerk signal (Y axis)
    47   timeBodyGyroJerkMeanZ      Average time domain angular velocity Jerk signal (Z axis)
    48    timeBodyGyroJerkStdX      Standard deviation of time domain angular velocity Jerk signal (X axis)
    49    timeBodyGyroJerkStdY      Standard deviation of time domain angular velocity Jerk signal (Y axis)
    50    timeBodyGyroJerkStdZ      Standard deviation of time domain angular velocity Jerk signal (Z axis)
    51     timeBodyGyroMagMean      Average magnitude of time domain angular velocity signal
    52      timeBodyGyroMagStd      Standard deviation of magnitude of time domain angular velocity signal
    53       timeBodyGyroMeanX      Average time domain  angular velocity signal (X axis)
    54       timeBodyGyroMeanY      Average time domain  angular velocity signal (Y axis)
    55       timeBodyGyroMeanZ      Average time domain  angular velocity signal (Z axis)
    56        timeBodyGyroStdX      Standard deviation of time domain  angular velocity signal (X axis)
    57        timeBodyGyroStdY      Standard deviation of time domain  angular velocity signal (Y axis)
    58        timeBodyGyroStdZ      Standard deviation of time domain  angular velocity signal (Z axis)
    59   timeGravityAccMagMean      Average magnitude of time domain gravity acceleration signal
    60    timeGravityAccMagStd      Standard deviation of magnitude of time domain gravity acceleration signal
    61     timeGravityAccMeanX      Average time domain gravity acceleration signal (X axis)
    62     timeGravityAccMeanY      Average time domain gravity acceleration signal (Y axis)
    63     timeGravityAccMeanZ      Average time domain gravity acceleration signal (Z axis)
    64      timeGravityAccStdX      Standard deviation of time domain gravity acceleration signal (X axis)
    65      timeGravityAccStdY      Standard deviation of time domain gravity acceleration signal (Y axis)
    66      timeGravityAccStdZ      Standard deviation of time domain gravity acceleration signal (Z axis)

- 1-26: frequency domain measurements;
- 27-66: time domain measurements;
- 1-16 and 27-42: body motion acceleration signals measured by accelerometer embedded into a smartphone;
- 17-26 and 43-58: angular velocity signals measured by gyroscope embedded into a smartphone;
- 59-66: gravitational signals measured by accelerometer embedded into a smartphone;
- *X*, *Y* and *Z* are dimensions of the signals;
- *Mag* refers to the magnitude of the signals calculated using the Euclidean norm;
- *Jerk* refers to the first order differentiation of acceleration signal; 
- *Mean* and *Std* are the estimated mean() and std() of the signals


The data used to create the tidy dataset
----------------------------------------

The **bodyMovement** dataset is the combination of two sets of measured variables: 

- training dataset (70% of data), and 
- test dataset (30% of data).

The training sets:

- `UCI HAR Dataset/train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. This is an identifier of the subject who carried out the experiment. Its range is from 1 to 30.
- `UCI HAR Dataset/train/X_train.txt`: Training set.
- `UCI HAR Dataset/train/y_train.txt`: Training labels.

The test sets:
  
- `UCI HAR Dataset/test/subject_test.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- `UCI HAR Dataset/test/X_test.txt`: Test set.
- `UCI HAR Dataset/test/y_test.txt`: Test labels.

The measured variable names were taken from:
  
- `UCI HAR Dataset/features.txt`: List of all features with time and frequency domain variables (1-561) that are normalized and bounded within [-1,1]. Each feature vector is a row on the text file.

The activity labels were taken from:
  
- `UCI HAR Dataset/activity_labels.txt`: Links the class labels with their activity name.

Files used as reference:
  
- `UCI HAR Dataset/README.txt`
- `UCI HAR Dataset/features_info.txt`: The information about the variables used on the feature vector.

Data transformations (steps performed in the analysis)
----------------------------------------

Step 1: Preparing data for manipulation.

- Load training and test data into R using read.table()
- Wrap the X,Y-train and X,Y-test data frames with tbl_df() (package dplyr()) for easy data handling and printing

Step2: Merging the training and the test sets to create one data set.

- Combine training sets into one
- Combine test sets into one
- Reshaping training set
- Reshaping test set
- Combine training and test sets together 

Step3. Extracting only the measurements on the mean and standard deviation for each measurement. 

The references for mean() and std() are taken from the features_info.txt. 

- Check for duplicates
- Add "X" in front of feature_id to make it similar to the feature_id variable in the combined DF
- Subset the measurements from the combined DF dataset that contain mean() and std() based on the features ID

Step 4. Use descriptive activity names to name the activities in the data set

- Load activity labels
- Make the labels descriptive and edit the elements of the activity vector:
Editing (or, fixing) the character names is explained in the week 4 lecture 1 (last slide of "editingTextVariables"). 
- Make it lower case
- Make camel case
- Join the activity labels with the data

Step 5. Appropriately labeling the data set with descriptive variable names. 

The "descrptive" implies that we have to use words that reflect meanings instead of simbols or characters that do not, for example, instead of "t" and "f" use "time" and "freq" (frequency). 

- First, check if evything is OK with the feature names. The idea is to split the feature column into 4 coumns separating the comon parts and then run table() to check how many unique names are in each column. 
- Uniform the format of the data by adding NAs (because XYZ is missing in some names)
- Split the vector into four columns, at the same time removing simbols
According to the feature_info.txt document the feature names have only 10 unique parts: 
combining time (t) and frequency (f) variables we get the following name parts that should match our column 2: 
*BodyAcc, GravityAcc, BodyAccJerk, BodyGyroJerk, BodyAccMag, GravityAccMag, BodyAccJerkMag, BodyGyroMag, BodyGyroJerkMag, BodyGyro*. 
We have 13 because there are names with duplicates, e.g. "BodyBody".
- Substitute "BodyBody" with "Body"
- Check now for duplicates  
- Edit the variable names by removing "NAs", "()", "-", replacing "mean" with "Mean", "std" with "Std", "t" with "time" and "f" with "freq".
- Finaly, join the descriptive variable names with the DF_sub data

Step 6. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

- Summarise data by subject, activity level, and measured variable using ddply() 
- Spread variables to make tidy set using sprea()
- Save the data in a text format


