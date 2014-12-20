Codebook of `tidySamsungDF.txt` dataset
================================

The dataset contains 180 rows (30 subjects * 6 activities) and 68 columns (2 categorical and 66 continuous variables). 

The categorical variables:

    1 subject  :  Subject IDs (1-30);
    2 activity :  Activity names ("laying", "sitting", "standing", "walking", "walkingDownstairs", "walkingUpstairs").

The continuous variables:


    1   freqBodyAccJerkMagMean  :   Average magnitude of frequency domain body acceleration Jerk signal
    2    freqBodyAccJerkMagStd  :   Standard deviation of magnitude of frequency domain body acceleration Jerk signal
    3     freqBodyAccJerkMeanX  :   Average frequency domain body acceleration Jerk signal (X axis)
    4     freqBodyAccJerkMeanY  :   Average frequency domain body acceleration Jerk signal (Y axis)
    5     freqBodyAccJerkMeanZ  :   Average frequency domain body acceleration Jerk signal (Z axis)
    6      freqBodyAccJerkStdX  :   Standard deviation of frequency domain body acceleration Jerk signal (X axis)
    7      freqBodyAccJerkStdY  :   Standard deviation of frequency domain body acceleration Jerk signal (Y axis)
    8      freqBodyAccJerkStdZ  :   Standard deviation of frequency domain body acceleration Jerk signal (Z axis)
    9       freqBodyAccMagMean  :   Average magnitude of frequency domain body acceleration signal
    10       freqBodyAccMagStd  :   Standard deviation of magnitude of frequency domain body acceleration signal
    11        freqBodyAccMeanX  :   Average frequency domain body acceleration signal (X axis)
    12        freqBodyAccMeanY  :   Average frequency domain body acceleration signal (Y axis)
    13        freqBodyAccMeanZ  :   Average frequency domain body acceleration signal (Z axis)
    14         freqBodyAccStdX  :   Standard deviation of frequency domain body acceleration signal (X axis)
    15         freqBodyAccStdY  :   Standard deviation of frequency domain body acceleration signal (Y axis)
    16         freqBodyAccStdZ  :   Standard deviation of frequency domain body acceleration signal (Z axis)
    17 freqBodyGyroJerkMagMean  :   Average magnitude of frequency domain angular velocity Jerk signal
    18  freqBodyGyroJerkMagStd  :   Standard deviation of magnitude of frequency domain angular velocity Jerk signal
    19     freqBodyGyroMagMean  :   Average magnitude of frequency domain angular velocity signal
    20      freqBodyGyroMagStd  :   Standard deviation of magnitude of frequency domain angular velocity signal
    21       freqBodyGyroMeanX  :   Average frequency domain angular velocity signal (X axis)
    22       freqBodyGyroMeanY  :   Average frequency domain angular velocity signal (Y axis)
    23       freqBodyGyroMeanZ  :   Average frequency domain angular velocity signal (Z axis)
    24        freqBodyGyroStdX  :   Standard deviation of frequency domain angular velocity signal (X axis)
    25        freqBodyGyroStdY  :   Standard deviation of frequency domain angular velocity signal (Y axis)
    26        freqBodyGyroStdZ  :   Standard deviation of frequency domain angular velocity signal (Z axis)
    27  timeBodyAccJerkMagMean  :   Average magnitude of time domain body acceleration  Jerk signal
    28   timeBodyAccJerkMagStd  :   Standard deviation of magnitude of time domain body acceleration Jerk signal
    29    timeBodyAccJerkMeanX  :   Average time domain body acceleration Jerk signal (X axis)
    30    timeBodyAccJerkMeanY  :   Average time domain body acceleration Jerk signal (Y axis)
    31    timeBodyAccJerkMeanZ  :   Average time domain body acceleration Jerk signal (Z axis)
    32     timeBodyAccJerkStdX  :   Standard deviation of time domain body acceleration Jerk signal (X axis) 
    33     timeBodyAccJerkStdY  :   Standard deviation of time domain body acceleration Jerk signal (Y axis)
    34     timeBodyAccJerkStdZ  :   Standard deviation of time domain body acceleration Jerk signal (Z axis)
    35      timeBodyAccMagMean  :   Average magnitude of time domain body acceleration signal
    36       timeBodyAccMagStd  :   Standard deviation of magnitude of time domain body acceleration signal
    37        timeBodyAccMeanX  :   Average time domain body acceleration signal (X axis)
    38        timeBodyAccMeanY  :   Average time domain body acceleration signal (Y axis)
    39        timeBodyAccMeanZ  :   Average time domain body acceleration signal (Z axis)
    40         timeBodyAccStdX  :   Standard deviation of time domain body acceleration signal (X axis)
    41         timeBodyAccStdY  :   Standard deviation of time domain body acceleration signal (Y axis)
    42         timeBodyAccStdZ  :   Standard deviation of time domain body acceleration signal (Z axis)
    43 timeBodyGyroJerkMagMean  :   Average magnitude of time domain angular velocity Jerk signal
    44  timeBodyGyroJerkMagStd  :   Standard deviation of magnitude of time domain angular velocity Jerk signal
    45   timeBodyGyroJerkMeanX  :   Average time domain angular velocity Jerk signal (X axis)
    46   timeBodyGyroJerkMeanY  :   Average time domain angular velocity Jerk signal (Y axis)
    47   timeBodyGyroJerkMeanZ  :   Average time domain angular velocity Jerk signal (Z axis)
    48    timeBodyGyroJerkStdX  :   Standard deviation of time domain angular velocity Jerk signal (X axis)
    49    timeBodyGyroJerkStdY  :   Standard deviation of time domain angular velocity Jerk signal (Y axis)
    50    timeBodyGyroJerkStdZ  :   Standard deviation of time domain angular velocity Jerk signal (Z axis)
    51     timeBodyGyroMagMean  :   Average magnitude of time domain angular velocity signal
    52      timeBodyGyroMagStd  :   Standard deviation of magnitude of time domain angular velocity signal
    53       timeBodyGyroMeanX  :   Average time domain  angular velocity signal (X axis)
    54       timeBodyGyroMeanY  :   Average time domain  angular velocity signal (Y axis)
    55       timeBodyGyroMeanZ  :   Average time domain  angular velocity signal (Z axis)
    56        timeBodyGyroStdX  :   Standard deviation of time domain  angular velocity signal (X axis)
    57        timeBodyGyroStdY  :   Standard deviation of time domain  angular velocity signal (Y axis)
    58        timeBodyGyroStdZ  :   Standard deviation of time domain  angular velocity signal (Z axis)
    59   timeGravityAccMagMean  :   Average magnitude of time domain gravity acceleration signal
    60    timeGravityAccMagStd  :   Standard deviation of magnitude of time domain gravity acceleration signal
    61     timeGravityAccMeanX  :   Average time domain gravity acceleration signal (X axis)
    62     timeGravityAccMeanY  :   Average time domain gravity acceleration signal (Y axis)
    63     timeGravityAccMeanZ  :   Average time domain gravity acceleration signal (Z axis)
    64      timeGravityAccStdX  :   Standard deviation of time domain gravity acceleration signal (X axis)
    65      timeGravityAccStdY  :   Standard deviation of time domain gravity acceleration signal (Y axis)
    66      timeGravityAccStdZ  :   Standard deviation of time domain gravity acceleration signal (Z axis)

- 1-26: frequency domain measurements;
- 27-66: time domain measurements;
- 1-16 and 27-42: body motion acceleration signals measured by accelerometer embedded into a smartphone;
- 17-26 and 43-58: angular velocity signals measured by gyroscope embedded into a smartphone;
- 59-66: gravitational signals measured by accelerometer embedded into a smartphone;
- `X`, `Y` and `Z` are dimensions of the signals;
- `Mag` refers to the magnitude of the signals calculated using the Euclidean norm;
- `Jerk` refers to the first order differentiation of acceleration signal; 
- `Mean` and `Std` are the estimated mean() and std() of the signals


The data used to create the tidy dataset
----------------------------------------

To create the tidy **tidySamsungDF.txt** data set I used the row data obtained from the Human Activity Recognition Using Smartphones Dataset (Version 1.0): 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

        Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
        Smartlab - Non Linear Complex Systems Laboratory
        DITEN - Universit‡ degli Studi di Genova.
        Via Opera Pia 11A, I-16145, Genoa, Italy.
        activityrecognition@smartlab.ws
        www.smartlab.ws


The **tidySamsungDF.txt** data set is the combination of two sets of row data: 

- training data set (70% of data), and 
- test data set (30% of data).

The training data set includes:

- `UCI HAR Dataset/train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. This is an identifier of the subject who carried out the experiment. Its range is from 1 to 30.
- `UCI HAR Dataset/train/X_train.txt`: Training set.
- `UCI HAR Dataset/train/y_train.txt`: Training labels.

The test data set includes:
  
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

Data transformations (steps performed to clean up the data)
----------------------------------------

The R libraries used to transform the data are: 

- **dplyr** (version 0.3.0.2)
- **plyr** (version 1.8.1) 
- **tidyr** (version 0.2.0)

**Step 1: Preparing data for cleaning.**

- Load the training/test observation sets, activity label IDs and subject IDs data into R using `read.table()`.
- Wrap the training/test observation sets and activity label IDs sets with `tbl_df()` (`package dplyr()`) for easy data manipulation.

**Step2: Merging the training and the test sets to create one data set.**

- Combine training set with traning labels and subject IDs using `cbind()`.
- Combine test set with test labels and subject IDs using `cbind()`.
- Reshaping the combined training set using gather(by variable ID) and mutate(adding column "train").
- Reshaping the combined test set using gather(by variable ID) and mutate(adding column "test").
- Combine training and test sets together using `rbind_list()`.

**Step3. Extracting only the measurements on the mean and standard deviation for each measurement.**

The references for `mean()` and `std()` were taken from the `features_info.txt`, which comes together with the row data. 
- From `features.txt` data subset only variables that contain `mean` or `std` using `filter()` with `grep()`. The subset contains 66 feature names.
- Check this subset for duplicates using `filter()` with `duplicated()`. No duplicates were found.
- Reformat the `feature_id` column in the feature subset so that it can be matched with the `feature_id` column in the combined data set (from Step 2).
- Extract the measurements on the mean and standard deviation for each measurement from the combined dataset based on the `feature_id` using `filter()` function.

**Step 4. Use descriptive activity names to name the activities in the data set.**

- Load activity labels with `read.table()`.
- The activity labels are already descriptive, but need some editing of the elements of the activity vector. Editing (or, fixing) of the character names is explained in *week 4 lecture 1* (last slide of "editingTextVariables"). 
- Make it lower case with `tolower()`.
- Make it `camelCase` using `mutate()` with `sub()`. 
- Join the fixed activity labels with the combined data set using `arrange()` with `join()` by activity label IDs.

**Step 5. Appropriately labeling the data set with descriptive variable names.**

A "descrptive variable name" implies using a name that describes the meaning of the variable intuitively, for example, instead of `t` and `f` use `time` and `freq` (or, `frequency`). 

- Check if the feature subset has appropriate labeling. Check for errors (visually and/or programmatically) and edit it. 

The idea was to split the column containg feature names into 4 coumns each containing a relevant part for easy visualization. These 4 columns then were checked for errors by running `table()` and `R base` functions. The noticed discrepancies were: 1) not all names have X-Y-Z part; 2) some names contain duplicated parts.

- First, unify the format of the column containing feature names by adding NAs were X-Y-Z was missing.
- Add "-" simbol to separate the relevant parts of the string for easier spliting.
- Split the feature column into four columns using `strsplit()` and remove unnecessary simbols: `()` and `-`.
- After reshaping it into a data frame and applying `table()` it was easier to see were the discrepances are.

Comparing my unique feature names with the names descibed in the `feature_info.txt` document, I've got 3 extra variable names: `BodyBodyAccJerkMag`, `BodyBodyGyroJerkMag`, `BodyBodyGyroMag`, which has to be edited.

- Substitute `BodyBody` part with `Body` part using `sub()`.
- Using `mutate()` with `sub()` and `gsub()` remove `NAs`, `()`, `-`, replace `mean` with `Mean`, `std` with `Std`, `t` with `time` and `f` with `freq`.
- Finaly, join the appropriate descriptive variable names with the combined data set.

**Step 6. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.**

- Summarise data (averaging) by `subject_id`, `activity` and `feature` using `ddply()`. 
- Spread the averaged variables to make the required tidy data set using `spread()` function.
- Save the data in a `.txt` format using `write.table()` with `row.name=FALSE`. The names of the saved file is `tidySamsungDF.txt`.


