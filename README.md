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

