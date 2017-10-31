# Codebook for *Getting and Cleaning Data* course project

## Data

The `tidy_data.txt` data file is a text file, which contains the average signal measurements for each subject and each activity..

The first row contains the names of the variables. 

### Variables 
- `subject`: Integer, identify the subject, ranges from 1 to 30.

- `activity`: String, identify activity and gets 6 different values as follows: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

#### Average of measurements 
All measurements are floating-point values and are normalised within [-1,1].
The measurements are classified in two parts:

- Time-part signals  -> `timePart`, is raw values of accelerometer and gyroscope .

- Frequency-part signals ->  `frequencyPart`, is a Fast Fourier Transform (FFT) to some of the time-part values.

#### Time-part variables

Average and standard deviation of the time-part body acceleration in the X, Y and Z directions:

	- `timePartBodyAccelerometerMeanX`
	- `timePartBodyAccelerometerMeanY`
	- `timePartBodyAccelerometerMeanZ`
	- `timePartBodyAccelerometerStandardDeviationX`
	- `timePartBodyAccelerometerStandardDeviationY`
	- `timePartBodyAccelerometerStandardDeviationZ`

Average and standard deviation of time-part gravity acceleration in the X, Y and Z directions:

	- `timePartGravityAccelerometerMeanX`
	- `timePartGravityAccelerometerMeanY`
	- `timePartGravityAccelerometerMeanZ`
	- `timePartGravityAccelerometerStandardDeviationX`
	- `timePartGravityAccelerometerStandardDeviationY`
	- `timePartGravityAccelerometerStandardDeviationZ`

Average and standard deviation of time-part body acceleration jerk in the X, Y and Z directions:

	- `timePartBodyAccelerometerJerkMeanX`
	- `timePartBodyAccelerometerJerkMeanY`
	- `timePartBodyAccelerometerJerkMeanZ`
	- `timePartBodyAccelerometerJerkStandardDeviationX`
	- `timePartBodyAccelerometerJerkStandardDeviationY`
	- `timePartBodyAccelerometerJerkStandardDeviationZ`

Average and standard deviation of time-part body angular velocity in the X, Y and Z directions:

	- `timePartBodyGyroscopeMeanX`
	- `timePartBodyGyroscopeMeanY`
	- `timePartBodyGyroscopeMeanZ`
	- `timePartBodyGyroscopeStandardDeviationX`
	- `timePartBodyGyroscopeStandardDeviationY`
	- `timePartBodyGyroscopeStandardDeviationZ`

Average and standard deviation of time-part body angular velocity jerk in the X, Y and Z directions:

	- `timePartBodyGyroscopeJerkMeanX`
	- `timePartBodyGyroscopeJerkMeanY`
	- `timePartBodyGyroscopeJerkMeanZ`
	- `timePartBodyGyroscopeJerkStandardDeviationX`
	- `timePartBodyGyroscopeJerkStandardDeviationY`
	- `timePartBodyGyroscopeJerkStandardDeviationZ`

Average and standard deviation of the time-part magnitude of body & gravity acceleration:

	- `timePartBodyAccelerometerMagnitudeMean`
	- `timePartBodyAccelerometerMagnitudeStandardDeviation`
	- `timePartGravityAccelerometerMagnitudeMean`
	- `timePartGravityAccelerometerMagnitudeStandardDeviation`

Average and standard deviation of the time-part magnitude of body acceleration jerk, angular velocity & angular velocity jerk:

	- `timePartBodyAccelerometerJerkMagnitudeMean`
	- `timePartBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `timePartBodyGyroscopeMagnitudeMean`
	- `timePartBodyGyroscopeMagnitudeStandardDeviation`
	- `timePartBodyGyroscopeJerkMagnitudeMean`
	- `timePartBodyGyroscopeJerkMagnitudeStandardDeviation`

#### Frequency-part variables

Average and standard deviation of frequency-part body acceleration in the X, Y and Z directions:

	- `freqPartBodyAccelerometerMeanX`
	- `freqPartBodyAccelerometerMeanY`
	- `freqPartBodyAccelerometerMeanZ`
	- `freqpartBodyAccelerometerStandardDeviationX`
	- `freqPartBodyAccelerometerStandardDeviationY`
	- `freqPartBodyAccelerometerStandardDeviationZ`

The average of the frequency components of the frequency-part body acceleration & acceleration jerk in the X, Y and Z directions:

	- `freqPartBodyAccelerometerMeanFrequencyX`
	- `freqPartBodyAccelerometerMeanFrequencyY`
	- `freqPartBodyAccelerometerMeanFrequencyZ`
	- `freqPartBodyAccelerometerJerkMeanX`
	- `freqPartBodyAccelerometerJerkMeanY`
	- `freqPartBodyAccelerometerJerkMeanZ`

Standard deviation of the frequency-part body acceleration jerk  in the X, Y and Z directions:

	- `freqPartBodyAccelerometerJerkStandardDeviationX`
	- `freqPartBodyAccelerometerJerkStandardDeviationY`
	- `freqPartBodyAccelerometerJerkStandardDeviationZ`

The average of the frequency components of the frequency-part body acceleration jerk in the X, Y and Z directions:

	- `freqPartBodyAccelerometerJerkMeanFrequencyX`
	- `freqPartBodyAccelerometerJerkMeanFrequencyY`
	- `freqPartBodyAccelerometerJerkMeanFrequencyZ`

Average and standard deviation of frequency-part body angular velocity in the X, Y and Z directions:

	- `freqPartBodyGyroscopeMeanX`
	- `freqPartBodyGyroscopeMeanY`
	- `freqPartBodyGyroscopeMeanZ`
	- `freqPartBodyGyroscopeStandardDeviationX`
	- `freqPartBodyGyroscopeStandardDeviationY`
	- `freqPartBodyGyroscopeStandardDeviationZ`

The average of the frequency components of the frequency-part body angular velocity in the X, Y and Z directions:

	- `freqPartBodyGyroscopeMeanFrequencyX`
	- `freqPartBodyGyroscopeMeanFrequencyY`
	- `freqPartBodyGyroscopeMeanFrequencyZ`

Average, standard deviation, and the average of the frequency components of the frequency-part magnitude of body acceleration, accelaration jerk, angular velocity & angular velocity jerk:

	- `freqPartBodyAccelerometerMagnitudeMean`
	- `freqPartBodyAccelerometerMagnitudeStandardDeviation`
	- `freqPartBodyAccelerometerMagnitudeMeanFrequency`
	- `freqPartBodyAccelerometerJerkMagnitudeMean`
	- `freqPartBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `freqPartBodyAccelerometerJerkMagnitudeMeanFrequency`
	- `freqPartBodyGyroscopeMagnitudeMean`
	- `freqPartBodyGyroscopeMagnitudeStandardDeviation`
	- `freqPartBodyGyroscopeMagnitudeMeanFrequency`
	- `freqPartBodyGyroscopeJerkMagnitudeMean`
	- `freqPartBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `freqPartBodyGyroscopeJerkMagnitudeMeanFrequency`

## Modifications

The source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The transformations are made as follows:

1. The training & test sets were merged in order to create one data set.
2. Extracted only measurements of the mean and the standard deviation (`mean` and `std`).
3. The activity values of the main dataset (values 1 to 6) were replaced with descriptive activity names.
4. The name of the variables were replaced with descriptive variable names as follows:
	- Removed special characters 
	- The  `f` and `t` were replaced to `freqPart` and `timePart` respectively.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
	- The `BodyBody` were replaced with `Body`.
	
5. Finally, created a new tidy dataset with the average of each variable for each activity and each subject.
