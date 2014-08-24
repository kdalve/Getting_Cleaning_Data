#Codebook

##Human Activity Recognition Using Smartphones Dataset
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.""

"The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."" 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Steps of run_analysis.R:

**Retrieve Data**

        Download Course Project data files (https://d396qusza40orc.cloudfront        .net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)  & unzip
Set working directory
        setwd("~/Desktop/Coursera/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset") 
List the files to properly read from the correct directory

**Merge files**

        Merge the training ("./train/X_train.txt") and the test ("./test/X_test.txt") sets with rbind to create one dataset
        Read training ("./train/subject_train.txt") and test ("./test/subject_test.txt") subject ids and combine using rbind
        Read training ("./train/y_train.txt") and test ("./test/y_test.txt") activities and combine using rbind


**Extract Mean & Standard Deviation for each measurement**

        Read the features ("./features.txt") file
        Extract columns with the mean or std pattern (using grep) in the features column
        Subset the mean and sd columns from the combined training and test data set

**Name the activities in the data set**

        View the activity labels ("./activity_labels.txt") to change the numeric category to a string variable
        Replace the numeric category in activity data with a descriptive string:
        1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 
        5 STANDING 6 LAYING

**Label the data set with descriptive variable names**

        Adjust the column names in the subsetted means and sd data set using gsub to remove hyphens, spaces, etc.
        Replace the current variable name in activity data and subject data in the data sets with "activity" and "subject" respectively.

**Bind the subject data, means and sd data, and activity data with cbind to create the first tidy data set (".tidy1.txt")**

**Create an Independent Tidy data set ("tidy2.txt") with the mean of each variable for each activity and subject by using aggregate.**

        Renames the subject and activity column.

#Data Created through R Script:
actdata : 10299 obs. of 1 variable.

actlabel : 6 obs. of 2 variables.

acttest : 2947 obs. of 1 variable.

acttrain : 7352 obs. of 1 variable.

features : 561 obs. of 2 variables.

meansdData : 10299 obs. of 66 variables.

subdata : 10299 obs. of 1 variables.

subtest : 2947 obs. of 1 variable.

subtrain : 7352 obs. of 1 variable.

test : 2947 obs. of 561 variables.

tidy1 : 10299 obs. of 68 variables.

tidy2 : 180 obs. of 68 variables.

training : 7352 obs. of 561 variables.

ttdata : 10299 obs. of 561 variables.


#Variables:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Current data sets:
For Tidy 1, only Mean and Standard Deviation measurements were kept as variables.<BR>
For Tidy 2, the mean of the Tidy 1 variables were calculated by activity and subject. 


##Tidy1
"subject"  :  Subject ID 
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

##Tidy2
"subject"    Subject ID 1:30 repeating 6 times     
"activity"    Activity   six levels : "WALKING_UPSTAIRS"                                 "WALKING_DOWNSTAIRS" "SITTING" "STANDING" "LAYING"          
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
