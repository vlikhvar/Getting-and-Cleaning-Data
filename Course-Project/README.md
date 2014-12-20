The `run_analysis.R` script does the following:
---------------------------------------------
1. Load necessary R libraries (see below).
2. Unzip the file that contains the Samsung data (`getdata-projectfiles-UCI HAR Dataset.zip`).
3. Load the training and the test sets of row data.
4. Merge the training and the test sets to create one data set.
5. Extract only the measurements on the mean and standard deviation for each measurement. 
6. Use descriptive activity names to name the activities in the data set.
7. Appropriately label the data set with descriptive variable names. 
8. From the data set in step 4, it will create an independent tidy data set (`tidySamsungDF.txt`) with the average of each variable for each activity and each subject.

The data and the steps of the process are described in [CodeBook.md](https://github.com/vlikhvar/Getting-and-Cleaning-Data/blob/master/Course-Project/CodeBook.md)

Starting conditions
-------------------

In R `setwd()` to your working directory, were you have the dowloaded Samsung data file `getdata-projectfiles-UCI HAR Dataset.zip`. The `run_analysis.R` code should be run in your working directory.

The information about the system and R version:

        sessionInfo()
        
        R version 3.1.0 Patched (2014-05-01 r65516)
        Platform: x86_64-apple-darwin10.8.0 (64-bit)
        
        locale:
        [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
        
        attached base packages:
        [1] stats     graphics  grDevices utils     datasets  methods   base     
        
        loaded via a namespace (and not attached):
        [1] tools_3.1.0

The `run_analysis.R` code will load the following libraries:

        library(dplyr)
        packageVersion("dplyr")
        #[1] ‘0.3.0.2’
        
        library(plyr)
        packageVersion("plyr")
        #[1] ‘1.8.1’
        
        library(tidyr)
        packageVersion("tidyr")
        #[1] ‘0.2.0’


After you run the `run_analysis.R` script the `tidySamsungDF.txt` data set should appear in your working directory.
