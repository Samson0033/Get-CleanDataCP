##Downloading the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}
download.file(fileUrl,destfile="./data/MyData.zip")

###Unzip MyData to /data directory
unzip(zipfile="./data/MyData.zip",exdir="./data")

##Loading the required packages
library(dplyr)
library(data.table)
library(tidyr)

##Reading the necessary files as data tables

Path <- "D:/COURSERA/Data Science/R Working Directory/data/UCI HAR Dataset"
Subject_Train <- tbl_df(read.table(file.path(Path, "train", "subject_train.txt")))
Subject_Test  <- tbl_df(read.table(file.path(Path, "test" , "subject_test.txt")))

Activity_Train <- tbl_df(read.table(file.path(Path, "train", "Y_train.txt")))
Activity_Test  <- tbl_df(read.table(file.path(Path, "test" , "Y_test.txt")))

Data_Train <- tbl_df(read.table(file.path(Path, "train", "X_train.txt")))
Data_Test  <- tbl_df(read.table(file.path(Path, "test" , "X_test.txt")))

##Merging the training and the test sets to create one data set.

Data_Subject <- rbind(Subject_Train, Subject_Test)
setnames(Data_Subject, "V1", "subject")
Data_Activity <- rbind(Activity_Train, Activity_Test)
setnames(Data_Activity, "V1", "activityNum")
DataTable <- rbind(Data_Train, Data_Test)
Data_Features <- tbl_df(read.table(file.path(Path, "features.txt")))
setnames(Data_Features, names(Data_Features), c("featureNum", "featureName"))
colnames(DataTable) <- Data_Features$featureName
Activity_Labels <- tbl_df(read.table(file.path(Path, "activity_labels.txt")))
setnames(Activity_Labels, names(Activity_Labels), c("activityNum","activityName"))
Data_Subject_Activity <- cbind(Data_Subject, Data_Activity)
DataTable <- cbind(Data_Subject_Activity, DataTable)

##Extracting only the measurements on the mean and standard 
##deviation for each measurement. 
Features_Mean_Std <- grep("mean\\(\\)|std\\(\\)",Data_Features$featureName,value=TRUE)
Features_Mean_Std <- union(c("subject","activityNum"), Features_Mean_Std)
DataTable <- subset(DataTable,select=Features_Mean_Std) 

##Using descriptive activity names to name the activities in the data set
DataTable <- merge(Activity_Labels, DataTable , by="activityNum", all.x=TRUE)
DataTable$activityName <- as.character(DataTable$activityName)
Aggregate_data<- aggregate(. ~ subject - activityName, data = DataTable, mean) 
DataTable<- tbl_df(arrange(Aggregate_data,subject,activityName))

## Labeling the data set with descriptive variable names. 
names(DataTable) <-gsub("std()", "SD", names(DataTable))
names(DataTable) <-gsub("mean()", "Mean", names(DataTable))
names(DataTable) <-gsub("^t", "time", names(DataTable))
names(DataTable) <-gsub("^f", "frequency", names(DataTable))
names(DataTable) <-gsub("Acc", "Accelerometer", names(DataTable))
names(DataTable) <-gsub("Gyro", "Gyroscope", names(DataTable))
names(DataTable) <-gsub("Mag", "Magnitude", names(DataTable))
names(DataTable) <-gsub("BodyBody", "Body", names(DataTable))

head(str(DataTable))

##Creating the tidy data set with the average of 
##each variable for each activity and each subject.
New_DataTable <- ddply(DataTable, c("subject","activityNum"), numcolwise(mean))
write.table(New_DataTable, file = "TidyData.txt")
