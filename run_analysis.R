#Set the right environment
setwd ('Coursera/Data Science//Getting and Cleaning Data/Code/')

# Download the data
myurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(myurl, destfile='./data/Dataset.zip')

# Load all the data in R
unzip('./data/Dataset.zip', list=T, overwrite=T, exdir='./data')
subject_Train = read.table('UCI HAR Dataset/train/subject_train.txt')
X_Train <- read.table('UCI HAR Dataset/train/X_train.txt')
Y_Train <- read.table('UCI HAR Dataset/train/Y_train.txt')
subject_Test <- read.table('UCI HAR Dataset/test/subject_test.txt')
X_Test <- read.table('UCI HAR Dataset/test/X_test.txt')
Y_Test <- read.table('UCI HAR Dataset/test/Y_test.txt')

# Replace activity numbers with activity labels in both Y
act_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
Y_Test <- merge(Y_Test, act_labels)
Y_Train <- merge(Y_Train, act_labels)
Y_Test <- Y_Test[2]
Y_Train <- Y_Train[2]

# Combine all observation data into a single dataframe
test <- cbind(subject_Test, Y_Test, X_Test)
train <- cbind(subject_Train, Y_Train, X_Train)
fullData <- rbind(test, train)

# Garbage cleaning
rm(subject_Train, X_Train, Y_Train, subject_Test, X_Test, Y_Test)
rm (test, train, act_labels)

# Create list of column names and use them as labels
feature_names <- read.table('./UCI HAR Dataset/features.txt', stringsAsFactors = F)
column_names <- feature_names[[2]]
column_names <- c("Subject", "Activity", column_names)
column_names <- make.names(column_names)
colnames(fullData) <- column_names

# Garbage collection
rm(feature_names, column_names)

# Retain only those columns that contain "mean" and "std"
fullData <- fullData[, grepl("Subject", names(fullData)) 
                     | grepl("Activity", names(fullData)) 
                     | grepl("mean", names(fullData)) 
                     | grepl("std", names(fullData)) ]

# Output it to a file
write.table(fullData, './data/HAR1.txt', row.name=F)

# Make it into a tiday data set
library(reshape2)
dataMelt <- melt(fullData, id=c('Subject', 'Activity'))
groupedMelt <- group_by(dataMelt, Subject, Activity, variable)
tidy <- summarize(groupedMelt, Mean=mean(value))

# Garbage collection (although not really needed)
rm (dataMelt, groupedMelt)

# Output tidy data to a file
write.table(tidy, './data/tidy.txt', row.name=F)


