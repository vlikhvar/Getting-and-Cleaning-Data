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

The data set is a combination of two sets of measures variables: 

- training (70% of data), and 
- test (30% of data).

The training set were:

- `train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. This is an identifier of the subject who carried out the experiment. Its range is from 1 to 30.
- `train/X_train.txt`: Training set.
- `train/y_train.txt`: Training labels.

The test sets were:
  
- `test/subject_test.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- `test/X_test.txt`: Test set.
- `test/y_test.txt`: Test labels.

The measured variable names were taken from:
  
- `features.txt`: List of all features with time and frequency domain variables (1-561) that are normalized and bounded within [-1,1]. Each feature vector is a row on the text file.

The activity labels were taken from:
  
- `activity_labels.txt`: Links the class labels with their activity name.

Files used as reference:
  
- `README.txt`
- `features_info.txt`: The information about the variables used on the feature vector.

Data transformations (steps performed in the analysis)
----------------------------------------


