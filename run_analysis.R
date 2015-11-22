##Getting and Cleaning Data Project
##Objective: To produce a tidy data set with average values for the mean and standard deviation variables

#loading necessary packages
library(plyr)

#reading in the various data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <-read.table("UCI HAR Dataset/test/X_test.txt")
y_test <-read.table("UCI HAR Dataset/test/y_test.txt")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <-read.table("UCI HAR Dataset/train/X_train.txt")
y_train <-read.table("UCI HAR Dataset/train/y_train.txt")

features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

##Step 1: Merging the training and test datasets

test <- cbind(subject_test,y_test,x_test)
train <- cbind(subject_train,y_train,x_train)
mergedData <- rbind(test,train)

##Step 2: Extracting the mean and standard deviation variables

subsetvector <- grep("mean\\(\\)|std\\(\\)",features[,2])
subsetvector2 <- subsetvector + 2
subsetvector3 <- c(1,2,subsetvector2)
relevantData <- mergedData[,subsetvector3]

##Step 3: Naming the activities

relevantData[,2]<-activities[relevantData[,2],2]

##Step 4: Adding descriptive varaiable names to the data

##Assigning the variable names from features table

namesvector<-c("Subject","Activity",grep("mean\\(\\)|std\\(\\)",features[,2],value=TRUE))
names(relevantData)<-namesvector

##Making the variable names more descriptive

names(relevantData)<-gsub("^t","time_",names(relevantData))
names(relevantData)<-gsub("^f","freq_",names(relevantData))
names(relevantData)<-gsub("\\()","",names(relevantData))
names(relevantData)<-gsub("std","stddev",names(relevantData))
names(relevantData)<-gsub("Acc","Acceleration",names(relevantData))
names(relevantData)<-gsub("Gyro","AngularVelocity",names(relevantData))
names(relevantData)<-gsub("Mag","Magnitude",names(relevantData))
names(relevantData)<-gsub("BodyBody","Body",names(relevantData))

##Step5: Creating a data set with the average of each variable and writing this to a txt file

averageData <- ddply(relevantData,.(Subject,Activity),colwise(mean))

write.table(averageData,"averageData.txt",row.names=FALSE)
