Getting and Cleaning Data - Course Project

Code book

This code book describes the variables present in the data set produced
by completing the course project for the Getting and Cleaning Data course
offered by The Johns Hopkins University via coursera.org. The data were
produced by acquiring and manipulating an existing data set.

(Original data located at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

With full description at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data set referenced above contains a README and Code Book for itself.)


Number of files: 1

Filename: GetDataProjTidyData.txt

Number of variables: 68

Number of observations: 180


Variable description format:

	[variable name]
		[Description of variable]	
			[factor levels]
		

Subject

	Numeric identifier given to each anonymous test subject.	
		1–30
		
Activity

	Physical activity performed by subject for measurement.	
		LAYING		
		SITTING		
		STANDING		
		WALKING		
		WALKING_DOWNSTAIRS		
		WALKING_UPSTAIRS


Each of the following variables will be described in full individually, but they share
many common components that are worth describing in general first. Each variable is a
mean of observations of a given measurement of a Subject's performance of an Activity.

The underlying measurements being averaged are themselves either means or standard
deviations of a time-domain signal, which describes the motion experienced by the
Subject's smartphone, either induced by the body's motion, or by gravity. These motions
are either quantified as linear accelerations, or as angular velocities; being vector
quantities, they have X, Y, and Z components, each of which is included, as well as
the vector's magnitude. The linear and angular jerks (both components and magnitudes)
were also obtained from the linear accelerations and angular velocities by derivation.
Finally, some of the above quantities had the Fast Fourier Transform applied, to obtain
frequency-domain measurements of the same quantities.

The selection of each of these parameters is codified in the variable names as follows:

	[t/f] 	t: time-domain
			f: frequency-domain
			
	[Body/Gravity]	Body: subject's body motion
					Gravity: gravitational motion
					
	[Acc/AccJerk/Gyro/GyroJerk]	Acc: linear acceleration
								AccJerk: linear jerk								
								Gyro: angular velocity								
								GyroJerk: angular jerk
				
	[Mean/Std]	Mean: mean measurement				
				Std: standard deviation measurement
				
	[X/Y/Z/Mag] X: motion vector's X component				
				Y: motion vector's Y component				
				Z: motion vector's Z component				
				Mag: motion vector's magnitude
				
NOTE: 	

		Units for the measurements below were not indicated in the original documentation.
		However, units for other unused (but comparable) measurements in the data set were
		given in units standard gravity units g = 9.80665 m/s^2, so if we are to assume, we
		assume the measurements below are in standard gravity units too. Thus jerk measurements
		would be in g/s, Fourier Transforms in g/s, and Fourier Transforms of jerks in g/s^2.
		
		
tBodyAccMeanX

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear acceleration in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.
		(See NOTE above for unit assumptions)
	
tBodyAccMeanY

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear acceleration in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccMeanZ

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear acceleration in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccStdX

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear acceleration in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccStdY

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear acceleration in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccStdZ

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear acceleration in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.			
		(See NOTE above for unit assumptions)
		
tGravityAccMeanX

	Mean value of all observed means of time-domain signal measurements of subject's
	gravitational linear acceleration in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tGravityAccMeanY

	Mean value of all observed means of time-domain signal measurements of subject's
	gravitational linear acceleration in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tGravityAccMeanZ

	Mean value of all observed means of time-domain signal measurements of subject's
	gravitational linear acceleration in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tGravityAccStdX

	Mean value of all observed standard deviations of time-domain signal measurements of
	subject's gravitational linear acceleration in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tGravityAccStdY

	Mean value of all observed standard deviations of time-domain signal measurements of
	subject's gravitational linear acceleration in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.			
		(See NOTE above for unit assumptions)
		
tGravityAccStdZ

	Mean value of all observed standard deviations of time-domain signal measurements of
	subject's gravitational linear acceleration in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccJerkMeanX

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear jerk in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyAccJerkMeanY

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear jerk in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
tBodyAccJerkMeanZ

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear jerk in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
tBodyAccJerkStdX

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear jerk in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
tBodyAccJerkStdY

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear jerk in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyAccJerkStdZ

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear jerk in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyGyroMeanX

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular velocity in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.			
		(See NOTE above for unit assumptions)
		
tBodyGyroMeanY

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular velocity in the y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)

	
tBodyGyroMeanZ

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular velocity in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.			
		(See NOTE above for unit assumptions)
		
tBodyGyroStdX

	Mean value of all observed standard deviations of time-domain signal measurements of
	subject's body angular velocity in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyGyroStdY

	Mean value of all observed standard deviations of time-domain signal measurements of
	subject's body angular velocity in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
				
tBodyGyroStdZ

	Mean value of all observed standard deviations of time-domain signal measurements of
	subject's body angular velocity in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkMeanX

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular jerk in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkMeanY

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular jerk in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkMeanZ

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular jerk in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkStdX

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body angular jerk in the X direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkStdY

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body angular jerk in the Y direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkStdZ

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body angular jerk in the Z direction while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyAccMagMean

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear acceleration magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccMagStd

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear acceleration magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tGravityAccMagMean

	Mean value of all observed means of time-domain signal measurements of subject's
	gravitational linear acceleration magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tGravityAccMagStd

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's gravitational acceleration magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.		
		(See NOTE above for unit assumptions)
		
tBodyAccJerkMagMean

	Mean value of all observed means of time-domain signal measurements of subject's
	body linear jerk magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyAccJerkMagStd

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body linear jerk magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyGyroMagMean

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular velocity magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.			
		(See NOTE above for unit assumptions)
		
tBodyGyroMagStd

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body angular velocity magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in standard gravity units 'g'.			
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkMagMean

	Mean value of all observed means of time-domain signal measurements of subject's
	body angular jerk magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
tBodyGyroJerkMagStd

	Mean value of all observed standard deviations of time-domain signal measurements
	of subject's body angular jerk magnitude while performing an activity.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
fBodyAccMeanX

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear acceleration in the X direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccMeanY

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear acceleration in the Y direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccMeanZ

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear acceleration in the Z direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccStdX

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body linear acceleration in the X direction while performing an activity.
	Each observed value that was averaged was obtained by Fast Fourier Transform of the
	time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccStdY

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body linear acceleration in the Y direction while performing an activity.
	Each observed value that was averaged was obtained by Fast Fourier Transform of the
	time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccStdZ

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body linear acceleration in the Z direction while performing an activity.
	Each observed value that was averaged was obtained by Fast Fourier Transform of the
	time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.			
		(See NOTE above for unit assumptions)
		
fBodyAccJerkMeanX

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear jerk in the X direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.			
		(See NOTE above for unit assumptions)
		
fBodyAccJerkMeanY

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear jerk in the Y direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.			
		(See NOTE above for unit assumptions)
		
	
fBodyAccJerkMeanZ

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear jerk in the Z direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyAccJerkStdX

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body linear jerk in the X direction while performing an activity.
	Each observed value that was averaged was obtained by Fast Fourier Transform of the
	time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyAccJerkStdY

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body linear jerk in the Y direction while performing an activity.
	Each observed value that was averaged was obtained by Fast Fourier Transform of the
	time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyAccJerkStdZ

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body linear jerk in the Z direction while performing an activity.
	Each observed value that was averaged was obtained by Fast Fourier Transform of the
	time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyGyroMeanX

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body angular velocity in the X direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyGyroMeanY

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body angular velocity in the Y direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyGyroMeanZ

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body angular velocity in the Z direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyGyroStdX

	Mean value of all observed standard deviations of frequency-domain signal measurements of
	subject's body angular velocity in the X direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.
		(See NOTE above for unit assumptions)
		
fBodyGyroStdY

	Mean value of all observed standard deviations of frequency-domain signal measurements of
	subject's body angular velocity in the y direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyGyroStdZ

	Mean value of all observed standard deviations of frequency-domain signal measurements of
	subject's body angular velocity in the Z direction while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccMagMean

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear acceleration magnitude while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccMagStd

	Mean value of all observed standard deviations of frequency-domain signal measurements of
	subject's body linear acceleration magnitude while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyAccJerkMagMean

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body linear jerk magnitude while performing an activity. Each observed value that was
	averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyAccJerkMagStd

	Mean value of all observed standard deviations of frequency-domain signal measurements of
	subject's body linear jerk magnitude while performing an activity. Each observed value
	that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyGyroMagMean

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body angular velocity magnitude while performing an activity. Each observed value that
	was	averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyGyroMagStd

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body angular velocity magnitude while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s.		
		(See NOTE above for unit assumptions)
		
fBodyGyroJerkMagMean

	Mean value of all observed means of frequency-domain signal measurements of subject's
	body angular jerk magnitude while performing an activity. Each observed value that
	was	averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)
		
fBodyGyroJerkMagStd

	Mean value of all observed standard deviations of frequency-domain signal measurements
	of subject's body angular jerk magnitude while performing an activity. Each observed
	value that was averaged was obtained by Fast Fourier Transform of the time-domain signal.
	
		Numeric, normalised and bounded in [-1,1], assumed in g/s^2.		
		(See NOTE above for unit assumptions)