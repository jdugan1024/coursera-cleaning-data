# Code Book

This data is derived from [Human Activity Recognition Using Smartphones Data
Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The details of how the measurements were made and processed are in the
README.txt and feature_info.txt files included in the [ZIP
Archive](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip).


The process of tidying this data set included creating a single table which
includes the subjectId and the activity performed along with the mean of
each of the included measurements grouped by subjectId and activity. That is
for each subjectId we present the mean of each othe above variables for each
activity performed. The result is that we have the mean of the mean and mean
of the standard deviation for each of the variables.


subjectId: is the human being for which these variables were collected

activity: is the activity performed by the subject when the variables were
collected. The possible activities are:

    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

The mean and the standard deviation of the following variables are included in
this data set:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
