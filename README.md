Getting and Cleaning Data - Course Project
ReadMe

This ReadMe describes the files in this repository and their significances.
The files were made in completing the course project for the Getting and Cleaning
Data course offered by The Johns Hopkins University via coursera.org. The R script
is designed to act on an existing data set not found in this repo.

Original data located at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

With full description at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data set referenced above contains a README and Code Book for itself.


Number of files in this repository: 3

File names:	CodeBook.md

			README.md
			
			run_analysis.R


CodeBook.md

	File contains descriptions of all variables present in the data set produced
	by the R script run_analysis.R


README.md

	You're reading it!


run_analysis.R

	R script that acts on the original dataset to crop it and transform it into
	another tidy data set. The output data is named GetDataProjTidyData.txt, and
	should be written to your home directory upon running the script.
	
	It is not necessary to have already acquired the original data set to run
	this script, as the download and extraction steps are included in the script.
	
	Assuming run_analysis.R has been saved to your home directory, it can be run
	by inputting the following command into R:
	
		source("run_analysis.R")
		
	Again assuming you are working in your home directory, the output file
	GetDataProjTidyData.txt can then be read into R using the command:
	
		read.table("GetDataProjTidyData.txt", header=TRUE)
		
	run_analysis.R was written and tested using R version 3.2.0 (2015-04-16)
	Platform: x86_64-w64-mingw32/x64 (64-bit)
	
	
	Script procedure:
	The script first downloads the original data set, and saves it to a zip file in
	the home directory. It unzips the file, to a directory "UCI HAR Dataset" again
	within the home directory. This dataset contains documentation (features_info.txt,
	README,txt), files containing header/labelling information for the data
	(activity_labels.txt, features.txt) and two folders containing data (test, train).
	
	The test folder contains data files (subject_test.txt, X_test.txt, y_test.txt), and
	another folder (Inertial Signals)—the folder is not used in this script. subject_test.txt
	contains a single column of 2947 observations identifying the Subject variable. y_test.txt
	contains a single column of 2947 obeservations identifying the Activity variable.
	X_test.txt contains 561 columns of 2947 observations identifying the 561 measurement
	variables. These variables are described in detail in the Code Book.
	
	The train folder contains similar contents, but for 7352 observations.
	
	The Subjects present in test and train data are disjoint, having been selected randomly
	from a pool of 30 total subjects (ie. there are data for 21 Subjects in train, and 9
	distinct Subject in test). There are 10299 total observations.
	
	Please see the original data set's documentation for more information.
	
	The script reads each of the subject, X, and y files into R, for both test and train.
	These data are then merged together in each of test and train by binding the Subject
	data to the first column, the Activity data to the second, and the measurement data to
	columns 3 through 563. The rows of the train data are the bound below the rows of the
	test data to form one consolidated data frame.
	
	The columns of the data frame are then named, manually for the Subject and Activity
	columns, and using the contents of the file features.txt for the remaining measurement
	columns (features.txt contains precisely one column containing the names of these
	measurements).
	
	The values of the Activity column are then replaced with more descriptive values;
	originally they were encoded as numeric labels 1 to 6, and so instead we substitute
	the corresponding English-language values found in activity_labels.txt (note that
	this file identifies the correspondence between numeric and language-descriptive
	values). We choose to leave unchanged those values that contain underscores since
	while it may slightly be more readable to the human eye to replace these with spaces,
	doing so would cause difficulties later for reading the resulting output, and the
	gain in readability is quite negligible.
	
	For the purposes of this script, we are only concerned with those measurements that
	contain data on means or standard deviations of signals; of the 561 total measurements,
	precisely 66 of them are mean and standard deviations measurements. By inspecting the
	measurement names (eg. from features.txt) we note that each mean and standard deviation
	measurement contains the string "-mean()" or "-std()" in its label, so we extract only
	those columns from our data set whose labels contain one of these strings. We are left
	with a data frame containing 68 columns of 10299 rows.
	
	Next we tidy up the column labels. We remove special characters ('-', '(', and ')') and
	format it to camelCase. This standard is selected because from the experience of the 
	author it is quite common, highly usable, and should not cause any difficulties with
	R interpreting these values.
	
	We then compute mean values of the remaining measurements, calculated for each Subject/
	Activity pairing. That is, for each of the 30 Subjects, there are data on each of the 6
	Activities, with multiple observations for each distinct pairing of Subject and Activity,
	and we wish to find the mean of the observations for each pairing. Computing these means,
	we form a new tidy data set of 68 columns and 180 rows, labelled identically to the full
	data set from which it was computed.
	
	Finally, we write the data set to the file GetDataProjTidyData.txt.
	
	
	
	


