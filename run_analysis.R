#Download Course Project data files & unzip
#Set working directory
setwd("~/Desktop/Coursera/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset") #This needs to be your working directory
list.files() #Listing files to properly read from the correct directory
list.files("train")
list.files("test")

#Merge the training and the test sets to create one dataset

#Read training and test data sets and combine
training <-read.table("./train/X_train.txt") 
test <-read.table("./test/X_test.txt")
ttdata<-rbind(training,test)
dim(ttdata)

#Read training and test subject ids and combine
subtrain<-read.table("./train/subject_train.txt")
subtest<-read.table("./test/subject_test.txt")
subdata<-rbind(subtrain,subtest)        
dim(subdata)

#Read training and test activities and combine
acttrain<-read.table("./train/y_train.txt")
acttest<-read.table("./test/y_test.txt")
actdata<-rbind(acttrain,acttest)
dim(actdata)


#Extract Mean & Standard Deviation for each measurement
features<-read.table("./features.txt") #Read the features file
sumdata<- grep("mean\\(\\)|std\\(\\)",features[,2]) #Extract columns with the mean or std pattern in the features column
meansdData<-ttdata[ ,sumdata] #Subset the mean and sd columns
dim(meansdData)

#Name the activities in the data set 
actlabel<-read.table("./activity_labels.txt")
actlabel #View the activity labels to change the numeric category to a string variable

#Replaces the numeric category in activity data with a descriptive string
actdata$V1[actdata$V1== 1] <- "WALKING"
actdata$V1[actdata$V1== 2] <- "WALKING_UPSTAIRS"
actdata$V1[actdata$V1== 3] <- "WALKING_DOWNSTAIRS"
actdata$V1[actdata$V1== 4] <- "SITTING"
actdata$V1[actdata$V1== 5] <- "STANDING"
actdata$V1[actdata$V1== 6] <- "LAYING"

#Label the data set with descriptive variable names

#Adjusts the column names in the data set
names(meansdData) <- gsub("\\(\\)", "", features[sumdata, 2])
names(meansdData) <- gsub("-", "", names(meansdData))
names(meansdData)

#Replaces the current variable name in the data sets
names(actdata) <- "activity"
names(subdata) <- "subject"

#Binds the subject id, means and sd columns, and activity to create the first tidy data set
tidy1<-cbind(subdata,meansdData,actdata)
names(tidy1)
write.table(tidy1,"tidy1.txt") #Saves the data set

#Independent Tidy data set with Average of each variable for each activity and subject
tidy2<-aggregate.data.frame(tidy1[ ,2:67], by=list(tidy1$subject,tidy1$activity), FUN=mean, na.rm=TRUE)

write.table(tidy2,"tidy2.txt") #Saves the data set