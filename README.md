# *Getting and Cleaning Data* course project

The repository contains the files:

- `README.md`, this file, which  explains the analysis files.
- `tidy_data.txt`, which contains the tidy data set with mean of all variables grouped by subject and activity .
- `CodeBook.md`, the code book, which describes the contents of the data set (data, variables and all transformations that used inorder to generate the data).
- `run_analysis.R`, the R script that was used to create the data set.

## Study design 

The data downloaded from the following link:  (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).
The following description is refer to how the data collected:

*The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data*.

*The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain*.

Firstly, merged together the training and test data. Secondly, keep olny measurements for mean and standard deviation and finally calculated the average for each subject and activity.   

## Creating the data set 

The R script `run_analysis.R` can be used to in order to generate final data: It created using the following steps:

- If source data doesn't exist then download and unzip.
- Read data.
- Merge data (training and test) to create one data set.
- Extract  measurements of mean & standard deviation for each measurement.
- Use descriptive activity names to final data set.
- ACreate appropriate labels with descriptive variable names.
- Create a tidy set with the average of each variable for each subject & activity.
- Write the data set to the `tidy_data.txt` file.

The `tidy_data.txt` in this repository was created by running the `run_analysis.R` script using RStudio on Linux Cinnamon 64-bit edition.
