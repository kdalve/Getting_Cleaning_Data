Codebook

Steps:

#Retrieve Data
##Download Course Project data files (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  & unzip
##Set working directory
setwd("~/Desktop/Coursera/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset") 
##List the files to properly read from the correct directory

#Merge files
##Merge the training ("./train/X_train.txt") and the test ("./test/X_test.txt") sets with rbind to create one dataset
##Read training ("./train/subject_train.txt") and test ("./test/subject_test.txt") subject ids and combine using rbind
##Read training ("./train/y_train.txt") and test ("./test/y_test.txt") activities and combine using rbind


#Extract Mean & Standard Deviation for each measurement
##Read the features ("./features.txt") file
##Extract columns with the mean or std pattern (using grep) in the features column
##Subset the mean and sd columns from the combined training and test data set

#Name the activities in the data set 
##View the activity labels ("./activity_labels.txt") to change the numeric category to a string variable
##Replace the numeric category in activity data with a descriptive string:
        1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 
        5 STANDING 6 LAYING

#Label the data set with descriptive variable names
##Adjusts the column names in the subsetted means and sd data set using gsub to remove hyphens, spaces, etc.
##Replace the current variable name in activity data and subject data in the data sets with "activity" and "subject" respectively.

#Bind the subject data, means and sd data, and activity data with cbind to create the first tidy data set (".tidy1.txt")

# Create an Independent Tidy data set ("tidy2.txt") with the mean of each variable for each activity and subject by using aggregate. 

Variables:

Tidy1
"subject"          Subject ID 
"tBodyAccmeanX"           
"tBodyAccmeanY"            
"tBodyAccmeanZ"           
"tBodyAccstdX"             
"tBodyAccstdY"            
"tBodyAccstdZ"             
"tGravityAccmeanX"        
"tGravityAccmeanY"         
"tGravityAccmeanZ"        
"tGravityAccstdX"          
"tGravityAccstdY"         
"tGravityAccstdZ"          
"tBodyAccJerkmeanX"       
"tBodyAccJerkmeanY"        
"tBodyAccJerkmeanZ"       
"tBodyAccJerkstdX"         
"tBodyAccJerkstdY"        
"tBodyAccJerkstdZ"         
"tBodyGyromeanX"          
"tBodyGyromeanY"           
"tBodyGyromeanZ"          
"tBodyGyrostdX"            
"tBodyGyrostdY"           
"tBodyGyrostdZ"            
"tBodyGyroJerkmeanX"      
"tBodyGyroJerkmeanY"       
"tBodyGyroJerkmeanZ"      
"tBodyGyroJerkstdX"        
"tBodyGyroJerkstdY"       
"tBodyGyroJerkstdZ"        
"tBodyAccMagmean"         
"tBodyAccMagstd"           
"tGravityAccMagmean"      
"tGravityAccMagstd"        
"tBodyAccJerkMagmean"     
"tBodyAccJerkMagstd"       
"tBodyGyroMagmean"        
"tBodyGyroMagstd"          
"tBodyGyroJerkMagmean"    
"tBodyGyroJerkMagstd"      
"fBodyAccmeanX"           
"fBodyAccmeanY"            
"fBodyAccmeanZ"           
"fBodyAccstdX"             
"fBodyAccstdY"            
"fBodyAccstdZ"             
"fBodyAccJerkmeanX"       
"fBodyAccJerkmeanY"        
"fBodyAccJerkmeanZ"       
"fBodyAccJerkstdX"         
"fBodyAccJerkstdY"        
"fBodyAccJerkstdZ"         
"fBodyGyromeanX"          
"fBodyGyromeanY"           
"fBodyGyromeanZ"          
"fBodyGyrostdX"            
"fBodyGyrostdY"           
"fBodyGyrostdZ"            
"fBodyAccMagmean"         
"fBodyAccMagstd"           
"fBodyBodyAccJerkMagmean" 
"fBodyBodyAccJerkMagstd"   
"fBodyBodyGyroMagmean"    
"fBodyBodyGyroMagstd"      
"fBodyBodyGyroJerkMagmean"
"fBodyBodyGyroJerkMagstd"  
"activity"   Activity description with six levels : "WALKING_UPSTAIRS"                 "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING"

Tidy2
"Group.1"    Subject ID 1:30 repeating 6 times          
"Group.2"    Activity   six levels : "WALKING_UPSTAIRS"                                 "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING"          
 [3] "tBodyAccmeanX"            "tBodyAccmeanY"           
 [5] "tBodyAccmeanZ"            "tBodyAccstdX"            
 [7] "tBodyAccstdY"             "tBodyAccstdZ"            
 [9] "tGravityAccmeanX"         "tGravityAccmeanY"        
[11] "tGravityAccmeanZ"         "tGravityAccstdX"         
[13] "tGravityAccstdY"          "tGravityAccstdZ"         
[15] "tBodyAccJerkmeanX"        "tBodyAccJerkmeanY"       
[17] "tBodyAccJerkmeanZ"        "tBodyAccJerkstdX"        
[19] "tBodyAccJerkstdY"         "tBodyAccJerkstdZ"        
[21] "tBodyGyromeanX"           "tBodyGyromeanY"          
[23] "tBodyGyromeanZ"           "tBodyGyrostdX"           
[25] "tBodyGyrostdY"            "tBodyGyrostdZ"           
[27] "tBodyGyroJerkmeanX"       "tBodyGyroJerkmeanY"      
[29] "tBodyGyroJerkmeanZ"       "tBodyGyroJerkstdX"       
[31] "tBodyGyroJerkstdY"        "tBodyGyroJerkstdZ"       
[33] "tBodyAccMagmean"          "tBodyAccMagstd"          
[35] "tGravityAccMagmean"       "tGravityAccMagstd"       
[37] "tBodyAccJerkMagmean"      "tBodyAccJerkMagstd"      
[39] "tBodyGyroMagmean"         "tBodyGyroMagstd"         
[41] "tBodyGyroJerkMagmean"     "tBodyGyroJerkMagstd"     
[43] "fBodyAccmeanX"            "fBodyAccmeanY"           
[45] "fBodyAccmeanZ"            "fBodyAccstdX"            
[47] "fBodyAccstdY"             "fBodyAccstdZ"            
[49] "fBodyAccJerkmeanX"        "fBodyAccJerkmeanY"       
[51] "fBodyAccJerkmeanZ"        "fBodyAccJerkstdX"        
[53] "fBodyAccJerkstdY"         "fBodyAccJerkstdZ"        
[55] "fBodyGyromeanX"           "fBodyGyromeanY"          
[57] "fBodyGyromeanZ"           "fBodyGyrostdX"           
[59] "fBodyGyrostdY"            "fBodyGyrostdZ"           
[61] "fBodyAccMagmean"          "fBodyAccMagstd"          
[63] "fBodyBodyAccJerkMagmean"  "fBodyBodyAccJerkMagstd"  
[65] "fBodyBodyGyroMagmean"     "fBodyBodyGyroMagstd"     
[67] "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagstd" 
