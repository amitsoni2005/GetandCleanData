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
	data <- lapply(filenames,read.table)
	names(data) <- columnNames("./Data")
	data
}
