# Course Project for Coursera Cleaning Data Class

The end product of this project is to present a tidy data set derived from the 
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
A specific [ZIP file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) was provided for the course.

For more details about the contents of this data set set the [code book](CodeBook.md).

To examine the data directly in R you can execute the following commands in R:

```
download.file("https://raw.githubusercontent.com/jdugan1024/coursera-cleaning-data/master/tidy.txt",
method="curl", destfile="tidy_data.txt")
tidyt <- read.table("tidy_data.txt", header=TRUE)
```

