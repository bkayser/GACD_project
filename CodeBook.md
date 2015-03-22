# Codebook for Summary Dataset of _Human Activity Recognition Using Smartphones Data Set_

This project contains a tidy data set `summary.txt` which is derived
from the raw data collected from smartphones described
in [the project home
page](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
at The Center for Machine Learning and Intelligent Systems.

## Study Design

The `summary.txt` tidy data file was designed based on the principles described
in the paper [_Tidy Data_](http://vita.had.co.nz/papers/tidy-data.pdf) by Hadley Wickham.

The file is in "wide" format.  Each row of the dataset represents the
observation of a subject doing a particular activity.

Each variable represents a different feature from the raw data set
consisting of processed signals from the accelerometers from the
Samsung Galaxy S smartphone.

The feature values could also have been interpreted as distinct observations
of a particular feature, resulting in each row having the data value for a distinct
feature, making the table 'long'.  I decided the dataset would be more usable
if the features were treated as variables.


## Code Book

There is a distinct observation for each distinct combination of
subject and activity.  The remaining variables are a subset of features from
the raw data, described in detail
[here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

### ID Variables

* _Subject_ is an index value from 1 to 30 identifying 30 different anonymous participants.
* _Activity_ describes the activity being performed when the data was
  collected and consists of LAYING, SITTING, STANDING, WALKING,
  WALKING_DOWNSTAIRS, WALKING_UPSTAIRS

### Accelerometer Variables

The remaining variables from the accelerometer consist of mean and
standard deviation values for each frequency domain variable from the
raw dataset.  

Units for acceleration (Acc) values are standard gravity units 'g'.

Units for gyroscope (Gyro) values are radians/second.

See the [raw data
description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
for further details.

* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y              
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X               
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z               
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y           
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X            
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z            
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y          
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X           
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z           
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y             
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X              
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z              
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y         
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X          
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z          
* tBodyAccMag-mean()
* tBodyAccMag-std()              
* tGravityAccMag-mean()
* tGravityAccMag-std()           
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()          
* tBodyGyroMag-mean()
* tBodyGyroMag-std()             
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()         
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y              
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X               
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z               
* fBodyAcc-meanFreq()-X
* fBodyAcc-meanFreq()-Y          
* fBodyAcc-meanFreq()-Z
* fBodyAccJerk-mean()-X          
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z          
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y           
* fBodyAccJerk-std()-Z
* fBodyAccJerk-meanFreq()-X      
* fBodyAccJerk-meanFreq()-Y
* fBodyAccJerk-meanFreq()-Z      
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y             
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X              
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z              
* fBodyGyro-meanFreq()-X
* fBodyGyro-meanFreq()-Y         
* fBodyGyro-meanFreq()-Z
* fBodyAccMag-mean()             
* fBodyAccMag-std()
* fBodyAccMag-meanFreq()         
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()      
* fBodyBodyAccJerkMag-meanFreq()
* fBodyBodyGyroMag-mean()        
* fBodyBodyGyroMag-std()
* fBodyBodyGyroMag-meanFreq()    
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()     
* fBodyBodyGyroJerkMag-meanFreq()
