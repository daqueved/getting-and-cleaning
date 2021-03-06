# README
## Getting and cleaning data course project

This is the project of the third course of the Data Science specialization program by the JHU. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 

The data for the project was the Human Activity Recognition Using Smartphones Data Set, available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. More details at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Files:

### run_analysis.R

Script that:

1. Install/load dplyr library
2. Download and unzip the file if it does not already exist in the working directory
3. Read all the files listed above
4. Assign the variable name for each dataset
5. Merge the id and activity data with each of the test and train dataset
6. Combine the complete train and test datasets
7. Select the features columns which contain mean and standard deviation
8. Assign the descriptive activity names to name the activities in the data set
9. Change the variables names
10. Creates an independent tidy data set with the average of each variable for each activity and each subject.

### CodeBook.md

It contain all the variables and transformations performed to clean up the data.

### group_with_mean.txt

This text file is the independent data set mentioned above.

