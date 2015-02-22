# GetandCleanData
Coursera Repository for Getting and Cleaning Data
## Class Project for "Getting and Cleaning Data"

The class project for [Getting and Cleaning Data](https://www.coursera.org/course/getdata) was to read in the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), perform an analysis on the data set, and output a tidy data set.

Here are the steps that must be performed before running the R script:**

1. Download the zip file from [this URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Unzip the file.
3. Data should be extracted in the following structure
|---Data
    |---test
       |---Inertial Signals
    |---train
        |---Inertial Signals
4. Copy the run_analysis file in the same directory level
5. Install the reshape2 package which can be installed using install.packages("reshape2") and then loading the library by calling library(reshape2)
6. run the R Script

Once those steps are complete, you can run the R script ([run_analysis.R](run_analysis.R)).

The output of the R script is a tidy data set, tidy.txt

You can read more about the data and the analysis in the CodeBook.md.
