---
title: "Codebook"
output: html_document
---

One of the most exciting areas in all of data science right now is wearable computing - see for example this [article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[Site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

Here are the data for the project: 

[Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

The run_analysis.R file does the following.  


- Merges the training and the test sets to create one data set.  
- Extracts only the measurements on the mean and standard deviation for each measurement.   
- Uses descriptive activity names to name the activities in the data set  
- Appropriately labels the data set with descriptive variable names.   
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

Variables of the data

```
##  [1] "subject"                                       
##  [2] "activityNum"                                   
##  [3] "timeBodyAccelerometer-Mean()-X"                
##  [4] "timeBodyAccelerometer-Mean()-Y"                
##  [5] "timeBodyAccelerometer-Mean()-Z"                
##  [6] "timeBodyAccelerometer-SD()-X"                  
##  [7] "timeBodyAccelerometer-SD()-Y"                  
##  [8] "timeBodyAccelerometer-SD()-Z"                  
##  [9] "timeGravityAccelerometer-Mean()-X"             
## [10] "timeGravityAccelerometer-Mean()-Y"             
## [11] "timeGravityAccelerometer-Mean()-Z"             
## [12] "timeGravityAccelerometer-SD()-X"               
## [13] "timeGravityAccelerometer-SD()-Y"               
## [14] "timeGravityAccelerometer-SD()-Z"               
## [15] "timeBodyAccelerometerJerk-Mean()-X"            
## [16] "timeBodyAccelerometerJerk-Mean()-Y"            
## [17] "timeBodyAccelerometerJerk-Mean()-Z"            
## [18] "timeBodyAccelerometerJerk-SD()-X"              
## [19] "timeBodyAccelerometerJerk-SD()-Y"              
## [20] "timeBodyAccelerometerJerk-SD()-Z"              
## [21] "timeBodyGyroscope-Mean()-X"                    
## [22] "timeBodyGyroscope-Mean()-Y"                    
## [23] "timeBodyGyroscope-Mean()-Z"                    
## [24] "timeBodyGyroscope-SD()-X"                      
## [25] "timeBodyGyroscope-SD()-Y"                      
## [26] "timeBodyGyroscope-SD()-Z"                      
## [27] "timeBodyGyroscopeJerk-Mean()-X"                
## [28] "timeBodyGyroscopeJerk-Mean()-Y"                
## [29] "timeBodyGyroscopeJerk-Mean()-Z"                
## [30] "timeBodyGyroscopeJerk-SD()-X"                  
## [31] "timeBodyGyroscopeJerk-SD()-Y"                  
## [32] "timeBodyGyroscopeJerk-SD()-Z"                  
## [33] "timeBodyAccelerometerMagnitude-Mean()"         
## [34] "timeBodyAccelerometerMagnitude-SD()"           
## [35] "timeGravityAccelerometerMagnitude-Mean()"      
## [36] "timeGravityAccelerometerMagnitude-SD()"        
## [37] "timeBodyAccelerometerJerkMagnitude-Mean()"     
## [38] "timeBodyAccelerometerJerkMagnitude-SD()"       
## [39] "timeBodyGyroscopeMagnitude-Mean()"             
## [40] "timeBodyGyroscopeMagnitude-SD()"               
## [41] "timeBodyGyroscopeJerkMagnitude-Mean()"         
## [42] "timeBodyGyroscopeJerkMagnitude-SD()"           
## [43] "frequencyBodyAccelerometer-Mean()-X"           
## [44] "frequencyBodyAccelerometer-Mean()-Y"           
## [45] "frequencyBodyAccelerometer-Mean()-Z"           
## [46] "frequencyBodyAccelerometer-SD()-X"             
## [47] "frequencyBodyAccelerometer-SD()-Y"             
## [48] "frequencyBodyAccelerometer-SD()-Z"             
## [49] "frequencyBodyAccelerometerJerk-Mean()-X"       
## [50] "frequencyBodyAccelerometerJerk-Mean()-Y"       
## [51] "frequencyBodyAccelerometerJerk-Mean()-Z"       
## [52] "frequencyBodyAccelerometerJerk-SD()-X"         
## [53] "frequencyBodyAccelerometerJerk-SD()-Y"         
## [54] "frequencyBodyAccelerometerJerk-SD()-Z"         
## [55] "frequencyBodyGyroscope-Mean()-X"               
## [56] "frequencyBodyGyroscope-Mean()-Y"               
## [57] "frequencyBodyGyroscope-Mean()-Z"               
## [58] "frequencyBodyGyroscope-SD()-X"                 
## [59] "frequencyBodyGyroscope-SD()-Y"                 
## [60] "frequencyBodyGyroscope-SD()-Z"                 
## [61] "frequencyBodyAccelerometerMagnitude-Mean()"    
## [62] "frequencyBodyAccelerometerMagnitude-SD()"      
## [63] "frequencyBodyAccelerometerJerkMagnitude-Mean()"
## [64] "frequencyBodyAccelerometerJerkMagnitude-SD()"  
## [65] "frequencyBodyGyroscopeMagnitude-Mean()"        
## [66] "frequencyBodyGyroscopeMagnitude-SD()"          
## [67] "frequencyBodyGyroscopeJerkMagnitude-Mean()"    
## [68] "frequencyBodyGyroscopeJerkMagnitude-SD()"
```
