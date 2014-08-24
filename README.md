
Run_analysis.R Script Description
============================================================================================

The run_analysis.R script Script loads the UCI smartphone accelerometer/gyroscope data from 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and creates a "tidy" dataset. The script assumes that the files are in a folder in the working directory labeled "UCI HAR Dataset" with two subfolders, "train" and "test", with  filepaths:

UCI HAR Dataset/train/X_train.txt  
UCI HAR Dataset/train/y_train.txt  
UCI HAR Dataset/train/subject_train.txt  
UCI HAR Dataset/test/X_test.txt  
UCI HAR Dataset/test/y_test.txt  
UCI HAR Dataset/test/subject_test.txt  
UCI HAR Dataset/activity_labels.txt  
UCI HAR Dataset/features.txt  

The tidy dataset combines the training/test data for X (feature data), y (activity labels), and subject (subject ID number).  The data frame only includes the feature variables containing mean and standard deviation measurements (i.e. containing mean() and std() in the feature name), as described in the dataset documentation. Activity labels are changed to 
the descriptive activity names (e.g. the label "1" becomes "WALKING") contained in "activity.txt".  Column names are changed to the appropriate descriptive feature name (e.g. V1 -> tBodyAcc.mean()-X) that are contained in "features.txt". The tidy dataset gives the average of each variable for each subject and each activity. For example the row

    subject_ID   activity  tBodyAcc.mean()-X  

    1        WALKING    -0.345678  
    
signifies that the mean of the tBodyAcc.mean()-X measurements is -0.345678 for subject 1 for the activity of walking.  The tidy dataset is output to a file named "Tidy_Data.txt" in the working directory.

=============================================================================================