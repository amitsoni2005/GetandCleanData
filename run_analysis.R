#use this library for creation of tidy data set.
library(reshape2)

#this function is used to define the columnNames
columnNames <- function(dir) {
	filenames <- list.files(dir, full.names = TRUE, pattern = "features.txt")
	featureNames <- read.table(filenames)
	names <- c("subjectID", as.character(featureNames[,2]), "activity")
	names
}

#This function would be used to read all the data from a specific folder to data.
readData <- function(dir){
	filenames <- list.files(dir, full.names = TRUE, pattern = "*.txt")
	data <- do.call("cbind", lapply(filenames,read.table))
	names(data) <- columnNames("./Data")
	data
}

#Read the training data
trainData <- readData("./Data/train")

#Read the test data
testData <- readData("./Data/test")

#Merges the training and the test sets to create one data set.
combinedData <- rbind(trainData, testData)

#matchcols(combinedData, with=c("subjectID", "activity", "mean()", "std()"), method = "or" )
#get the column names from the merged data
colnames <- names(combinedData)

#keep mean(), std(), activity and subjectID
colsToRetain <- grepl("mean\\(\\)", colnames) | grepl("std\\(\\)", colnames) | grepl("subjectID", colnames) | grepl("activity", colnames) 

#keep only the relevant data
#Extracts only the measurements on the mean and standard deviation for each measurement. 
combinedData <- combinedData[,colsToRetain]

#Uses descriptive activity names to name the activities in the data set
combinedData$activity <- factor(combinedData$activity, labels=c("Walking","Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
melted <- melt(combinedData, id=c("subjectID","activity"))
tidy <- dcast(melted, subjectID+activity ~ variable, mean)

# write the tidy data set to a file
write.csv(tidy, "tidy.csv", row.names=FALSE)





