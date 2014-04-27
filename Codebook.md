## Codebook for UCI HAR Dataset

The data set used for the Getting and Cleaning Data peer assessment was downloaded
from 

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

and is described at 

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The downloaded zip file was extracted in the directory UCI HAR Dataset in the project folder.

The UCI HAR Dataset directory contains 2 subdirectories and 4 files.  The files are:

* README.txt - 
* activity_labels.txt - contains activity names mapped to the ids in the dataset
* features.txt - lists the measurement values
* features_info.txt - 

The subdiretories are:
* test - contains pre-processed subset of data intended for use as a test set
* train - contains pre-processed subset of data intended for use as a training set

The test and train directories also contain the raw data.

The file subject_[train|test].txt contains test subject ids.
The file X_[train|test].txt contains the processed data.  The file y_[train|test].txt
contains the activity ids for each row in the data set.

For our assignment, we were only interested in the mean and standard deviation 
for each of the measures.

The following measures where used:
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Each of the measures with -XYZ represents 3 measures, one for each axis.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The 6 activities were 
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING


