#
# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each
# variable for each activity and each subject.
#

setwd("~/Dropbox/Coursera/Cleaning Data/UCI HAR Dataset/")

#
# returns a list with two entries: featureNames and activityNames
# these correspond to the list of feature names and activity names
# found in the features.txt and activity_lables.txt files
#
getNames <- function() {
    # get the column names
    featureNameTable <- read.table("features.txt")
    featureNames <- gsub("[\\(\\)]", "", featureNameTable[,2])
    
    # get the activity names
    activityNameTable <- read.table("activity_labels.txt")
    activityNames <- activityNameTable[,2]
    
    return(list(featureNames=featureNames, activityNames=activityNames))
}

#
# read the data in the specfied folder
#
getDataSet <- function(dataSet, names) {
    # read the data
    dataFile <- sprintf("%s/X_%s.txt", dataSet, dataSet)
    print(dataFile)
    data <- read.table(dataFile, col.names = names$featureNames)
    
    # add activity column
    activityFile <- sprintf("%s/y_%s.txt", dataSet, dataSet)
    print(activityFile)
    activityIds <- read.table(activityFile)
    data$activity <- activityIds[,1]
    
    # add subjectId column
    subjectFile <- sprintf("%s/subject_%s.txt", dataSet, dataSet)
    print(subjectFile)
    subjectIds <- read.table(subjectFile)
    data$subjectId <- subjectIds[,1]
    
    return(data)
}

names <- getNames()

#
# step 1: Merges the training and the test sets to create one data set.
# step 4: Appropriately labels the data set with descriptive variable names.
#         NOTE: It's *much* easier to do this now rather than later, so this step isn't done in order
#         step 4 happens in the getDataSet function
#
testData <- getDataSet("test", names)
trainData <- getDataSet("train", names)
data <- rbind(testData, trainData)

#
# step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
#

data <- select(data, subjectId, activity, matches("mean|std"))

#
# step 3: Uses descriptive activity names to name the activities in the data set
#

data$activity <- factor(data$activity, labels=names$activityNames)

#
# it's easier to deal with sorted data, so let's sort it:
#
data <- arrange(data, subjectId, activity)

#
# step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each
#         variable for each activity and each subject.
#

by_subject_activity <- group_by(data, subjectId, activity)
tidy <- summarise_each(by_subject_activity, funs(mean))
write.table(tidy, file="../coursera-cleaning-data/tidy.txt", row.names = FALSE)
