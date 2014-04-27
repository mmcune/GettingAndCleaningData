# Coursera - Getting and Cleaning Data
# Peer Assessment

library(reshape2)

trainX <- read.table('./UCI HAR Dataset/train/X_train.txt')
testX <- read.table('./UCI HAR Dataset/test/X_test.txt')

trainY <- read.table('./UCI HAR Dataset/train/y_train.txt')
testY <- read.table('./UCI HAR Dataset/test/y_test.txt')

trainSubject <- read.table('./UCI HAR Dataset/train/subject_train.txt') 
testSubject <- read.table('./UCI HAR Dataset/test/subject_test.txt') 

dataSet <- trainSubject
dataSet <- rbind(dataSet,testSubject)

tempX <- trainX
tempX <- rbind(tempX,testX)

# get relevant columns
features <- read.table('./UCI HAR Dataset/features.txt')

# find measures of mean and std. dev
features[grep('-mean()|-std()',features$V2),]

col_names <- c('Subject')

col_names <- c(col_names,as.character(features[grep('-mean()|-std()',features$V2),2]))

dataSet <- cbind(dataSet,tempX[,features[grep('-mean()|-std()',features$V2),1]])

names(dataSet) <- col_names

tempY <- trainY
tempY <- rbind(tempY,testY)

names(tempY) <- c("Activity")

activityList <- read.table('./UCI HAR Dataset/activity_labels.txt')

names(activityList) <- c("ActivityId","Activity")

activityList$Activity <- as.factor(activityList$Activity)

activities <- levels(activityList$Activity)

dataY <-lapply(tempY[1], function(i) activities[i])

dataSet <- cbind(dataY,dataSet)

dataSet <- dataSet[,c(2,1,3:81)]

id.vars <- c("Subject","Activity")

measure.vars <- setdiff(names(dataSet),id.vars)

melted <- melt(dataSet,id.vars,measure.vars)

dataSetAverage <- dcast(melted,Subject + Activity ~ variable, mean)

write.csv(dataSet,"tidy.txt")
write.csv(dataSetAverage,"tidy_average.txt")
