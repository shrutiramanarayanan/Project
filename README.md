##Getting and Cleaning Data Course Project

###Objective

The objective of this project is to produce a tidy data set of average values of the mean and standard deviation variables for each activity per subject.

###The Script

The run_analysis.R script takes the raw data and produces a tidy set which satisfies the objective.

###The Processing Steps

The run_analysis.R script follows the following steps:

* Reads the subject_test, subject_train, X_test, X_train, y_test, y_train, features, activity_labels data files. 

* Merges the data sets together appropriately using cbind() and rbind().

* Extracts those columns that relate to the mean and standard deviation variables using the grep function and adds it to the Subject and Activity columns.Those columns
with mean() and std() were extracted. 

* Names the 6 activities based on the names in the activity_labels file.

* Assigining the variables suitable names from the features file.  

* Making the variable names more descriptive using the gsub function. 

* Creating a tidy data table with the averages of each variable for each activity per subject using the plyr package and ddply function. 

* Writing the tidy data table into a text file called averageData.txt.

###How to run the script

Download the UCI HAR Dataset into your working directory. 
Run the run_analysis.R script using R.
A text file called averageData.txt will be created in your working directory. 
The text file will contain the tidy data( i.e. each variable should be in one column and each different observation of that variable should be in a different row).

For more details regarding the tidy data file refer to Codebook.md.


