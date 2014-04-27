GettingAndCleaningData
======================

## Getting and Cleaning Data Course Peer Assessment

This repository contains the required files for the Getting and Cleaning Data
peer assessment.  The files are:

* README.md - this file
* codebook.md - description of the data
* run_analysis.R - data processing steps
* tidy.txt - the initial data set, containing all of the mean and standard deviation measures
* tidy_average.txt - the second data set, containing the measures averaged over the subject and activity

### Source Data

The data was downloaded from 

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, 

extracted from the zip file and stored in the diretory 'UCI HAR Dataset'.  The codebook
included in this repository describes the data in detail.

### run_analysis.R

The external library reshape2 is required so that the melt and dcast functions can be used.
The run_analysis.R script can be run in R and does not require additional files.  It reads the
data from the directory specified above and expects the same subdirectory and files that are 
contained in the zipfile.

### Output

The run_analysis.R script outputs the two test files, tidy.txt and tidy_average.txt.


