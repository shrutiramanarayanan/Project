## Getting and Cleaning Data Course Project

###Background

The raw data relates to an experiment carried out on 30 subjects performing 6 different activities. Data regarding acceleration, angular velocity, etc were collected using smartphones
whilst the subjects performed 6 different activities (walking, walking upstairs,walking downstairs,sitting,standing and laying). 

More details on the experiment can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Objective

The objective of the project is to produce a tidy data set of average values of the mean and standard deviation variables for each activity per subject.

###The Raw Data

The raw data is split into multiple files (subject_test, subject_train, X_test, y_test, X_train, y_train) and contains data on 561 variables that were measured.

###The Tidy Data

The following steps should be followed to create the tidy data file:

*Download the data folder UCI HAR Dataset into your Working Directory. 
*Run the script run_analysis.R.
*The averageData.txt file wil be created in your Working Directory which will contain the tidy data. 

###Cleaning of the data

The following steps were followed to create the tidy dataset:

*The raw data file were merged along with the features and activity_label files.
*Measurements that related to the mean and standard deviation were extracted. 
*The activities were labelled appropriately using the names in the activities_labels file. 
*The variable names were made more descriptive.
*The average of each variable for each activity per subject was calculated and written to the tidy data file namely averageData.txt.

For more details on the code refer to README. 

###Description of the variables

The tidy data contains 68 columns. 
The first two columns relate to the subject and activity respectively and the remaining 66 columns relate to the measurements relating to mean and standard deviation. 
The variable names have been transformed from the original data by the following:
*Replacing t with time
*Replacing f with freq
*Removing ()
*Replacing std with stddev
*Replacing acc with acceleration
*Replacing gyro with angularVelocity
*Replacing Mag with MAgnitude
*Clearing some typos.

###Variables

Subject - refers to the number of the subject - ranges from 1 to 30.
Activity - refers to one of the 6 activities mentioned above.
time_BodyAcceleration-mean -X,Y,Z - units - metre per second squared
time_BodyAcceleration-stddev -X,Y,Z -units - metre per second squared
time_GravityAcceleration-mean-X,Y,Z - units - metre per second squared
time_GravityAcceleration-stddev-X,Y,Z - units - metre per second squared
time_BodyAccelerationJerk-mean-X,Y,Z - units - metre per second cubed
time_BodyAccelerationJerk-stddev-X,Y,Z - units - metre per second cubed
time_BodyAngularVelocity-mean-X,Y,Z - units - radian per second
time_BodyAngularVelocity-stddev-X,Y,Z-units -randian per second
time_BodyAngularVelocityJerk-mean-X,Y,Z-units-radian per second cubed
time_BodyAngularVelocityJerk-stddev-X,Y,Z - units - radian per second cubed
time_BodyAccelerationMagnitude-mean- units - metre per second squared
time_BodyAccelarationMagnitude-stddev-units -metre per second squared
time_BodyAngularVelocityMagnitude-mean -units - radian per second
time_BodyAngularVelocityMagnitude-stddev -units - radian per second
time_BodyAngularVelocityJerkMagnitude-mean -units - radian per second cubed
time_BodyAngularVelocityJerkMagnitude-stddev -units - radian per second cubed
freq_BodyAcceleration-mean-X,Y,Z -units -metre per second squared
freq_BodyAcceleration-stddev-X,Y,Z - units -metre per second squared
freq_BodyAccelerationJerk-mean-X,Y,Z - units -metre per second cubed
freq_BodyAccelerationJerk-stddev-X,Y,Z -units - metre per second cubed
freq_BodyAngularVelocity-mean-X,Y,Z -units - radian per second
freq_BodyAngularVelocity-stddev-X,Y,Z -units - radian per second
freq_BodyAccelerationMagnitude-mean - units -metre per second squared
freq_BodyAccelerationMagnitude-stddev - units -metre per second squared
freq_BodyAccelerationJerkMagnitude-mean - units -metre per second cubed
freq_BodyAccelerationJerkMagnitude-stddev - units -metre per second cubed
freq_BodyAngularVelocityMagnitude-mean - units -radian per second
freq_BodyAngularVelocityMagnitude-stddev -units - radian per second
freq_BodyAngularVelocityJerkMagnitude-mean -units - radian per second cubed
freq_BodyAngularVelocityJerkMagnitude-stddev - units -radian per second cubed


 
 
