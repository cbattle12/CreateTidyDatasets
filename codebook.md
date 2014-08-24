Codebook for variables in run_analysis.R 
============================================================================================

The tidy dataset (variable tidyData2, output to "Tidy_Data.txt") contains 180 rows and 81 columns where each row corresponds to the mean value of the measurement type in a given column for a given activity type and subject. For example

subject_ID   activity  tBodyAcc.mean()-X
    1        WALKING    -0.345678
    
indicates that the mean of the tBodyAcc.mean()-X measurements is -0.345678 for subject 1 for the activity of walking. The following list details what each column represents.

"subject_ID" = Subject ID number, from 1-30
"activity" = Type of activity (WALKING,WALKING_UPSTAIRS, WALKING _DOWNSTAIRS, SITTING,
             STANDING, LAYING)
"tBodyAcc-mean()-X" = mean body acceleration X axial direction, time domain
"tBodyAcc-mean()-Y" = mean body acceleration Y axial direction, time domain
"tBodyAcc-mean()-Z" = mean body acceleration Z axial direction, time domain
"tBodyAcc-std()-X" = standard deviation body acceleration X axial direction, time domain
"tBodyAcc-std()-Y" = standard deviation body acceleration Y axial direction, time domain
"tBodyAcc-std()-Z" = standard deviation body acceleration Z axial direction, time domain
"tGravityAcc-mean()-X" = mean gravity acceleration X axial direction, time domain
"tGravityAcc-mean()-Y" = mean gravity acceleration Y axial direction, time domain
"tGravityAcc-mean()-Z" = mean gravity acceleration Z axial direction, time domain
"tGravityAcc-std()-X" = std. dev. gravity acceleration X axial direction, time domain
"tGravityAcc-std()-Y" = std. dev. gravity acceleration Y axial direction, time domain
"tGravityAcc-std()-Z" = std. dev. gravity acceleration Z axial direction, time domain
"tBodyAccJerk-mean()-X" = mean body acceleration derivative X axial direction, time domain
"tBodyAccJerk-mean()-Y" = mean body acceleration derivative Y axial direction, time domain
"tBodyAccJerk-mean()-Z" = mean body acceleration derivative Z axial direction, time domain
"tBodyAccJerk-std()-X" = std.dev. body acceleration derivative X axial direction, time domain
"tBodyAccJerk-std()-Y" = std.dev. body acceleration derivative Y axial direction, time domain
"tBodyAccJerk-std()-Z" = std.dev. body acceleration derivative Z axial direction, time domain
"tBodyGyro-mean()-X" = mean body angular velocity X axial direction, time domain
"tBodyGyro-mean()-Y" = mean body angular velocity Y axial direction, time domain
"tBodyGyro-mean()-Z" = mean body angular velocity Y axial direction, time domain
"tBodyGyro-std()-X" = std. dev. body angular velocity X axial direction, time domain
"tBodyGyro-std()-Y" = std. dev. body angular velocity Y axial direction, time domain
"tBodyGyro-std()-Z" = std. dev. body angular velocity Z axial direction, time domain
"tBodyGyroJerk-mean()-X" = mean body angular vel. deriv. X axial direction, time domain
"tBodyGyroJerk-mean()-Y" = mean body angular vel. deriv. Y axial direction, time domain
"tBodyGyroJerk-mean()-Z" = mean body angular vel. deriv. Z axial direction, time domain
"tBodyGyroJerk-std()-X" = std. dev. body angular vel. deriv. X axial direction, time domain
"tBodyGyroJerk-std()-Y" = std. dev. body angular vel. deriv. Y axial direction, time domain
"tBodyGyroJerk-std()-Z" = std. dev. body angular vel. deriv. Z axial direction, time domain
"tBodyAccMag-mean()" = mean magnitude of body acceleration, time domain
"tBodyAccMag-std()" = std. dev. of magnitude of body acceleration, time domain
"tGravityAccMag-mean()" = mean magnitude of gravity acceleration, time domain
"tGravityAccMag-std()" = std. dev. of magnitude of gravity acceleration, time domain
"tBodyAccJerkMag-mean()" = mean magnitude of body acceleration deriv., time domain
"tBodyAccJerkMag-std()" = std. dev. magnitude of body acceleration deriv., time domain
"tBodyGyroMag-mean()" = mean magnitude of body angular vel., time domain
"tBodyGyroMag-std()" = std. dev. magnitude of body angular vel., time domain
"tBodyGyroJerkMag-mean()" = mean magnitude of body angular vel. deriv., time domain
"tBodyGyroJerkMag-std()" = std. dev. magnitude of body angular vel. deriv., time domain
"fBodyAcc-mean()-X" = mean body acceleration X axial direction, frequency domain
"fBodyAcc-mean()-Y" = mean body acceleration Y axial direction, frequency domain
"fBodyAcc-mean()-Z" = mean body acceleration Z axial direction, frequency domain
"fBodyAcc-std()-X" = std. dev. body acceleration X axial direction, frequency domain
"fBodyAcc-std()-Y" = std. dev. body acceleration Y axial direction, frequency domain
"fBodyAcc-std()-Z" = std. dev. body acceleration Z axial direction, frequency domain
"fBodyAcc-meanFreq()-X" = mean freq. of body acceleration X axial direction
"fBodyAcc-meanFreq()-Y" = mean freq. of body acceleration Y axial direction
"fBodyAcc-meanFreq()-Z" = mean freq. of body acceleration Z axial direction
"fBodyAccJerk-mean()-X" = mean body acceleration X axial direction deriv., freq. domain
"fBodyAccJerk-mean()-Y" = mean body acceleration Y axial direction deriv., freq. domain
"fBodyAccJerk-mean()-Z" = mean body acceleration Z axial direction deriv., freq. domain
"fBodyAccJerk-std()-X" = std. dev. body acceleration X axial direction deriv., freq. domain
"fBodyAccJerk-std()-Y" = std. dev. body acceleration Y axial direction deriv., freq. domain
"fBodyAccJerk-std()-Z" = std. dev. body acceleration Z axial direction deriv., freq. domain
"fBodyAccJerk-meanFreq()-X" = mean freq. of body acceleration X axial direction deriv.
"fBodyAccJerk-meanFreq()-Y" = mean freq. of body acceleration Y axial direction deriv.
"fBodyAccJerk-meanFreq()-Z" = mean freq. of body acceleration Z axial direction deriv.
"fBodyGyro-mean()-X" = mean body angular vel. X axial direction, freq. domain
"fBodyGyro-mean()-Y" = mean body angular vel. Y axial direction, freq. domain
"fBodyGyro-mean()-Z" = mean body angular vel. Z axial direction, freq. domain
"fBodyGyro-std()-X" = std. dev. body angular vel. X axial direction, freq. domain
"fBodyGyro-std()-Y" = std. dev. body angular vel. Y axial direction, freq. domain
"fBodyGyro-std()-Z" = std. dev. body angular vel. Z axial direction, freq. domain
"fBodyGyro-meanFreq()-X" = mean freq. body angular vel. X axial direction
"fBodyGyro-meanFreq()-Y" = mean freq. body angular vel. Y axial direction
"fBodyGyro-meanFreq()-Z" = mean freq. body angular vel. Z axial direction
"fBodyAccMag-mean()" = mean magnitude of body acceleration, freq. domain
"fBodyAccMag-std()" = std. dev. magnitude of body acceleration, freq. domain
"fBodyAccMag-meanFreq()" = magnitude of mean freq. of body acceleration
"fBodyBodyAccJerkMag-mean()" = mean magnitude of body acceleration deriv., freq. domain
"fBodyBodyAccJerkMag-std()" = std. dev. magnitude of body acceleration deriv., freq. domain
"fBodyBodyAccJerkMag-meanFreq()" = magnitude of mean freq. of body acceleration deriv.
"fBodyBodyGyroMag-mean()" = mean magnitude of body angular vel., freq. domain
"fBodyBodyGyroMag-std()" = std. dev. magnitude of body angular vel., freq. domain
"fBodyBodyGyroMag-meanFreq()"= magnitude of mean freq. of angular vel.
"fBodyBodyGyroJerkMag-mean()" = mean magnitude of body angular vel. deriv., freq. domain
"fBodyBodyGyroJerkMag-std()" = std. dev. magnitude of body angular vel. deriv., freq. domain
"fBodyBodyGyroJerkMag-meanFreq()"= magnitude of mean freq. of angular vel. deriv.

=============================================================================================