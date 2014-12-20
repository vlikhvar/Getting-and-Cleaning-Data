##################################
# This R script does the following:
##################################
#1. Load necessary R libraries.
#2. Unzip the file that contains the Samsung data (`getdata-projectfiles-UCI HAR Dataset.zip`).
#3. Load the training and the test sets of row data.
#4. Merge the training and the test sets to create one data set.
#5. Extract only the measurements on the mean and standard deviation for each measurement. 
#6. Use descriptive activity names to name the activities in the data set.
#7. Appropriately label the data set with descriptive variable names. 
#8. From the data set in step 4, it will create an independent tidy data set (`tidySamsungDF.txt`) 
#with the average of each variable for each activity and each subject.

##################################
#Reminder:
##################################
#setwd() to your working directory, were you have getdata-projectfiles-UCI HAR Dataset.zip file containing the Samsung data.
#This code should be run in your working directory.

##################################
#1. Load R libraries
##################################
library(dplyr)
packageVersion("dplyr")
#[1] ‘0.3.0.2’

library(plyr)
packageVersion("plyr")
#[1] ‘1.8.1’

library(tidyr)
packageVersion("tidyr")
#[1] ‘0.2.0’


##################################
#2. Unzip the Samsung data file
##################################
unzip("getdata-projectfiles-UCI HAR Dataset.zip", 
      overwrite=TRUE, junkpaths = FALSE, exdir = ".", unzip = "internal")

#The "UCI HAR Dataset" folder should appear in your working directory

##################################
#3. Load files
##################################
#Load features file
features <- read.table("./UCI HAR Dataset/features.txt", col.names=c("feature_id","feature"))
dim(features) #[1] 561   2

#Load training set subjects file
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names=c("subject"))
dim(subject_train)  #[1] 7352  1

table(subject_train)
' 1   3   5   6   7   8  11  14  15  16  17  19  21  22  23  25  26  27  28  29  30 
347 341 302 325 308 281 316 323 328 366 368 360 408 321 372 409 392 376 382 344 383'

#Load training set file
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names=features$feature_id)
dim(x_train)  #[1] 7352  561

#Load training set labels file
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names=c("label_id"))
dim(y_train) #[1] 7352  1

table(y_train)
'   1    2    3    4    5    6 
1226 1073  986 1286 1374 1407 
'
#Load test set subjects
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names=c("subject"))
dim(subject_test) #[1] 2947  1

table(subject_test)
' 2   4   9  10  12  13  18  20  24 
302 317 288 294 320 327 364 354 381 '

#Load test set file
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names=features$feature_id)
dim(x_test) #[1] 2947  561

#Load test set labels file
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names=c("label_id"))
dim(y_test)  #[1] 2947  1

table(y_test)
' 1   2   3   4   5   6 
496 471 420 491 532 537 '

#Wrap the data frames with tbl (package dplyr()) for easy data handling and printing
x_train <- tbl_df(x_train)
y_train <- tbl_df(y_train)
x_test <- tbl_df(x_test)
y_test <- tbl_df(y_test)

##################################
#4. Merge the training and the test sets to create one data set.
##################################
#Combine training sets into one
train_set <- cbind(subject_train, x_train, y_train)

#Combine test sets into one
test_set <- cbind(subject_test, x_test, y_test)

#Reshaping training set
train_set_reshaped <- train_set %>%
  gather(feature_id, value, X1:X561) %>%
  mutate(set = "train")

#Reshaping test set
test_set_reshaped <- test_set %>%
  gather(feature_id, value, X1:X561) %>%
  mutate(set = "test")

#Combine training and test sets together 
DF <- rbind_list(train_set_reshaped, test_set_reshaped)
dim(DF) #[1] 5777739       5

head(DF, 2)
'  subject label_id feature_id     value   set
1       1          5      X1 0.2885845 train
2       1          5      X1 0.2784188 train'

tail(DF, 2)
'  subject label_id feature_id     value  set
1      24          2    X561 0.1811516 test
2      24          2    X561 0.1847843 test'

##################################
#5. Extract only the measurements on the mean and standard deviation for each measurement. 
##################################
# From features.txt subset only variables that contain "mean" or "std".
# the references for mean() and std() are taken from the features_info.txt. 
# Note: the "features" file is already loaded

features_sub <- features %>% 
  filter(feature %in% grep("mean\\(|std", features$feature, value=T))

dim(features_sub) #[1] 66  2

head(features_sub, 3)
'  feature_id           feature
1          1 tBodyAcc-mean()-X
2          2 tBodyAcc-mean()-Y
3          3 tBodyAcc-mean()-Z'

#Check for duplicates
nrow(features_sub %>% filter(duplicated(features_sub))) 
#[1] 0 -> no duplicates

#Add "X" in front of feature_id to make it similar to the feature_id variable in the combined DF
features_sub$feature_id <- as.factor(paste("X", features_sub$feature_id, sep=""))

head(features_sub, 3)
'  feature_id           feature
1         X1 tBodyAcc-mean()-X
2         X2 tBodyAcc-mean()-Y
3         X3 tBodyAcc-mean()-Z'

#Subset the measurements from the combined DF dataset that contain mean() and std() based on the features ID
DF_sub <- DF %>% filter(feature_id %in% features_sub$feature_id)

length(unique(DF_sub$feature_id))  #66

dim(DF_sub) #[1] 679734      5

head(DF_sub, 2)
'subject label_id feature_id     value   set
1       1          5      X1 0.2885845 train
2       1          5      X1 0.2784188 train
'
##################################
#6. Use descriptive activity names to name the activities in the data set
##################################
#Load activity labels
act_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("label_id","activity"))
act_labels
'  label_id          activity
1        1            WALKING
2        2   WALKING_UPSTAIRS
3        3 WALKING_DOWNSTAIRS
4        4            SITTING
5        5           STANDING
6        6             LAYING'

# The activity labels are already descriptive, but need some editing of the elements of the activity vector:
# - editing (or, fixing) the character names is explained in the week 4 lecture #1
#   (last slide of "editingTextVariables"). I think this is optional because 
#   this project is until the end of week 3. But I did the editing anyway (to practice).

# Make it lower case
act_labels$activity <- tolower(act_labels$activity)

# Make it camelCase
act_labels <- act_labels %>% 
  mutate(activity = sub("_u", "U", activity)) %>%
  mutate(activity = sub("_d", "D", activity))

#Join the activity labels with the data
DF_sub <- arrange(join(DF_sub, act_labels), label_id)

head(DF_sub, 2)
'  subject label_id feature_id     value   set activity
1       1        1         X1 0.2820216 train  walking
2       1        1         X1 0.2558408 train  walking'

##################################
#7. Appropriately label the data set with descriptive variable names. 
##################################
#A "descrptive variable name" implies using a name that describes the meaning of the variable intuitively, 
#for example, instead of "t" and "f" use "time" and "freq" (or, "frequency"). 

head(features_sub, 3)
'  feature_id           feature
1          1 tBodyAcc-mean()-X
2          2 tBodyAcc-mean()-Y
3          3 tBodyAcc-mean()-Z'

tail(features_sub, 3)
'feature_id                     feature
64       X530      fBodyBodyGyroMag-std()
65       X542 fBodyBodyGyroJerkMag-mean()
66       X543  fBodyBodyGyroJerkMag-std()'

#Check if the feature subset has appropriate labeling. Check for errors (visually and/or programmatically) and edit it. 
#The idea was to split the column containg feature names into 4 coumns each containing a relevant part 
#for easy visualization. These 4 columns then were checked for errors by running `table()` and `R base` 
#functions. 
#The noticed discrepancies were: 
#1) not all names have X-Y-Z part; 
#2) some names contain duplicated parts. 

#First, unify the format of the column containing feature names by adding NAs were X-Y-Z was missing.
features_sub$feature <- sub(")$", ")-NA", features_sub$feature)

#Add "-" simbol to separate the relevant parts of the string for easier spliting.
features_sub$feature <- sub("^t", "t-", features_sub$feature)
features_sub$feature <- sub("^f", "f-", features_sub$feature)

#check
tail(features_sub$feature) 
'[1] "f-BodyBodyAccJerkMag-mean()-NA"  "f-BodyBodyAccJerkMag-std()-NA"  
[3] "f-BodyBodyGyroMag-mean()-NA"     "f-BodyBodyGyroMag-std()-NA"     
[5] "f-BodyBodyGyroJerkMag-mean()-NA" "f-BodyBodyGyroJerkMag-std()-NA"'

#Split the feature column into four columns and remove unnecessary simbols: `()` and `-`.
split_feature <- strsplit(as.character(features_sub$feature), "-|\\()-")

#Reshape it
split_feature_df <- data.frame(t(sapply(split_feature, function(x) x)))

table(split_feature_df$X1)
' f  t 
26 40 '

table(split_feature_df$X2)
'            BodyAcc         BodyAccJerk      BodyAccJerkMag          BodyAccMag 
                 12                  12                   2                   4 
 BodyBodyAccJerkMag BodyBodyGyroJerkMag     BodyBodyGyroMag            BodyGyro 
                  2                   2                   2                  12 
       BodyGyroJerk     BodyGyroJerkMag         BodyGyroMag          GravityAcc 
                  6                   2                   2                   6 
      GravityAccMag 
                  2'

table(split_feature_df$X3)
'mean  std 
  33   33 '

table(split_feature_df$X4)
'NA  X  Y  Z 
18 16 16 16 '

#The names we are interested in are in column 2
length(unique(split_feature_df$X2)) #[1] 13

#According to the feature_info.txt document the feature names have only 10 common unique parts.
#Combining time (t) and frequency (f) variables we get the following name parts that should match our column 2:
#BodyAcc, GravityAcc, BodyAccJerk, BodyGyroJerk, BodyAccMag, 
#GravityAccMag, BodyAccJerkMag, BodyGyroMag, BodyGyroJerkMag, BodyGyro

#We have 13 because there are names with duplicates, e.g. "BodyBody".

#Substitute "BodyBody" with "Body"
features_sub$feature <- sub("BodyBody", "Body", features_sub$feature)

#Check again  
split_feature <- strsplit(as.character(features_sub$feature), "-|\\()-")
split_feature_df <- data.frame(t(sapply(split_feature, function(x) x)))

length(unique(split_feature_df$X2)) #[1] 10 (that's what we need)

#Now we can clean up the variable names 
features_sub_fixed <- features_sub %>% 
  mutate(feature = sub("NA", "", feature)) %>%
  mutate(feature = sub("mean", "Mean", feature)) %>%
  mutate(feature = sub("std", "Std", feature)) %>%
  mutate(feature = sub("\\()-", "", feature)) %>%
  mutate(feature = gsub("-", "", feature)) %>%
  mutate(feature = sub("^f", "freq", feature)) %>%
  mutate(feature = sub("^t", "time", feature))

head(features_sub_fixed, 3)
'  feature_id          feature
1         X1 timeBodyAccMeanX
2         X2 timeBodyAccMeanY
3         X3 timeBodyAccMeanZ'

tail(features_sub_fixed, 3)
'   feature_id                 feature
64       X530      freqBodyGyroMagStd
65       X542 freqBodyGyroJerkMagMean
66       X543  freqBodyGyroJerkMagStd'

#Finaly, we can join the descriptive variable names with the DF_sub data
DF_sub <- arrange(join(DF_sub, features_sub_fixed), feature_id)

head(DF_sub, 2)
'  subject label_id feature_id     value   set activity          feature
1       1        1         X1 0.2820216 train  walking timeBodyAccMeanX
2       1        1         X1 0.2558408 train  walking timeBodyAccMeanX'

##################################
#8. From the data set in step 4, creates a second, independent tidy data set 
#      with the average of each variable for each activity and each subject.
##################################
#We have:
length(unique(DF_sub$subject)) #30
length(unique(DF_sub$activity)) #6
length(unique(DF_sub$feature)) #66 

#Summarise data by subject, activity level, and variable name
DF_summary <- ddply(DF_sub, .(subject, activity, feature), summarise, mean=mean(value))
head(DF_summary, 3)
'  subject activity                feature       mean
1       1   laying freqBodyAccJerkMagMean -0.9333004
2       1   laying  freqBodyAccJerkMagStd -0.9218040
3       1   laying   freqBodyAccJerkMeanX -0.9570739'

#Spread variables to make tidy data set
DF_final <- DF_summary %>% spread(feature, mean)
dim(DF_final)  #[1] 180  68

DF_final[1:5, 1:5]
'  subject          activity freqBodyAccJerkMagMean freqBodyAccJerkMagStd freqBodyAccJerkMeanX
1       1            laying            -0.93330036            -0.9218040          -0.95707388
2       1           sitting            -0.98526213            -0.9816062          -0.98659702
3       1          standing            -0.99254248            -0.9925360          -0.99463080
4       1           walking            -0.05711940            -0.1034924          -0.17054696
5       1 walkingDownstairs             0.02621849            -0.1040523          -0.02766387
'

write.table(DF_final, "./tidySamsungDF.txt", sep=",", row.names=FALSE)
