# Course Project for Coursera Cleaning Data Class

The end product of this project is to present a tidy data set derived from the 
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
A specific [ZIP file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) was provided for the course.
The R code used to produce the data set is include as [run_analysis.R](run_analysis.R). The [tidy data](tidy.txt) is included here as well.

The R code expects a folder named "UCI HAR Dataset" to exist in the same
directory it is run from and that the folder contains the contents of the ZIP
file above.

For more details about the contents of this data set set the [code book](CodeBook.md).

To examine the data directly in R you can execute the following commands in R:

```
download.file("https://raw.githubusercontent.com/jdugan1024/coursera-cleaning-data/master/tidy.txt",
method="curl", destfile="tidy_data.txt")
tidyData <- read.table("tidy_data.txt", header=TRUE)
View(tidyData)
```

## Description of run_analysis.R

The [run_analysis.R](run_analysis.R) script performs the steps requested by the assigment:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Note that step 4 is done in conunction with step 1 simply because it is much
easier to do it that way and there is no downside to doing so.

The data is presented in a wide format where each row has the subjectId, the
activity name and all of the mean and standard deviation measurements as
columns with the value of each row being the mean of the all the values
sharing the same subjectId and activity.

See the comments in [run_analysis.R](run_analysis.R) for the specific details
of how the code works.
