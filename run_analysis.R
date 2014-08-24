##///-----------------------------------------------------------------------------------------

## run_analysis.R: 
## 
## Script to load UCI smartphone accelerometer data and create a "tidy" datasets.  The 
## dataset combines the training/test data for X (feature data), y (activity labels), and 
## subject (subject ID number).  The data frame is reduced to only the feature variables 
## containing mean() and std() measurements.  The tidy dataset combines the training
## and test data(with the only mean and std variables), with activity labels changed to 
## descriptive names (e.g. 1 -> WALKING) and with the column names changed to the appropriate
## descriptive feature name (e.g. V1 -> tBodyAcc.mean()-X). The tidy dataset gives the 
## average of each variable for each subject and each activity. The script assumes that the 
## files are in a folder in the working directory labeled "UCI HAR Dataset" with subfolders 
## and file names as given in the "filelist" variable.  If this is not the case, change 
## "filelist" accordingly.  The tidy dataset is are written out to a plain text file called 
## "Tidy_Data.txt".

##--------------------------------------------------------------------------------------------

## Make file list of relevant files
filelist <- c("UCI HAR Dataset/train/X_train.txt","UCI HAR Dataset/train/y_train.txt",
              "UCI HAR Dataset/train/subject_train.txt","UCI HAR Dataset/test/X_test.txt",
              "UCI HAR Dataset/test/y_test.txt","UCI HAR Dataset/test/subject_test.txt",
              "UCI HAR Dataset/activity_labels.txt","UCI HAR Dataset/features.txt")

print("Loading files...")
## Read in training data
X_train <- read.table(filelist[1])
y_train <- read.table(filelist[2])
sub_train <- read.table(filelist[3])
print("Training data loaded...")

## Read in test data
X_test <- read.table(filelist[4])
y_test <- read.table(filelist[5])
sub_test <- read.table(filelist[6])
print("Test data loaded...")

#Read in feature list and activity labels
activity <- read.table(filelist[7])
features <- read.table(filelist[8])
print("Features and activity labels loaded.")

##---------------------------------------------

## 1) Merge datasets
XMerge <- rbind(X_train,X_test)
yMerge <- rbind(y_train,y_test)
subMerge <- rbind(sub_train,sub_test)

## 2) Find columns corresponding to the mean or std of a particular measurement
idx <- grep("mean()|std()",features[,2])
dataMStd <- XMerge[,idx]

## 3) Replace y labels with descriptive activity names
num <- 1:nrow(activity)
yDesc <- yMerge
for(i in num){
        yDesc[yDesc == i] <- as.character(activity[i,2])
}

## 4) Label the dataset columns with descriptive names & merge into tidy dataset
names(dataMStd) <- as.character(features[idx,2])
names(yDesc) = "activity"
names(subMerge) = "subject_ID"
combineData <- cbind(subMerge,yDesc,dataMStd)


## 5) Create another dataset with each subject and the average of their activity variables
library(reshape2)
dataMelt <- melt(combineData, id = c("activity","subject_ID"), measure.vars = names(dataMStd))
tidyData <- dcast(dataMelt,activity + subject_ID ~ variable, mean)
print("Writing tidy data set...")
write.table(tidyData, file = "Tidy_Data.txt", eol = "\r\n", row.names = F)
print("Done!")

##-----------------------------------------------------------------------------------------///