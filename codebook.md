CodeBook:
Input Data:
The script assumes the UCI dataset is extracted directly into ./data/. See the README.md for further details.

Output Data:
The resulting ./data/tidy_data.txt dataset includes mean and standard deviation variables for the following original variables,

tBodyAcc, tGravityAcc, tBodyAccJerk, tBodyGyro, tBodyGyroJerk, tBodyAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc, fBodyAccJerk, fBodyGyro, fBodyAccMag, fBodyBodyAccJerkMag, fBodyBodyGyroMag, fBodyBodyGyroJerkMag. All three X, Y, Z directions are included.

The above variables where chosen as they included either mean or std dev in their original names.

Transformations:
run_analysis.R does....

-Loads the various files which make-up the UCI dataset
-Merges the three test and three train files into a single data table, setting textual columns heading where possible
-Creates a smaller second dataset, containing only mean and std variables
-Computes the means of this secondary dataset, group by subject/activity.
-Saves this last dataset to ./coursera/data prep/tidydata.txt