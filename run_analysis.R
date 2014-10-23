# Before running script make sure that files: subject_train.txt, X_train.txt, y_train.txt, subject_test.txt,
# X_test.txt, y_test.txt, features.txt, activity_labels.txt - in your working dir without any subdirs

#Reading data
library(dplyr)
subject_train <- tbl_dt(read.table("subject_train.txt", header=F, stringsAsFactors=F))
X_train <- tbl_dt(read.table("X_train.txt", header=F, stringsAsFactors=F))
y_train <- tbl_dt(read.table("y_train.txt", header=F, stringsAsFactors=F))
subject_test <- tbl_dt(read.table("subject_test.txt", header=F, stringsAsFactors=F))
X_test <- tbl_dt(read.table("X_test.txt", header=F, stringsAsFactors=F))
y_test <- tbl_dt(read.table("y_test.txt", header=F, stringsAsFactors=F))

##Reading Features and converting all data sets to data.frames (just to be sure!)
features <- tbl_dt(read.table("features.txt", header=F, stringsAsFactors=F))
features <- data.frame(features)
X_train <- data.frame(X_train); X_test <- data.frame(X_test)
y_train <- data.frame(y_train); y_test <- data.frame(y_test)
subject_train <- data.frame(subject_train); subject_test <- data.frame(subject_test)

#Binding Big Data set and applying variable names
X_data <- rbind(X_train, X_test)
activity_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)
mData <- cbind(X_data, subject_data, activity_data)
names(mData) <- c(features$V2, "subject", "activity")

##Extracting only the measurements on the mean and standard deviation for each measurement
mData <- data.frame(mData[c(grep("mean", names(mData)), grep("std", names(mData)))], subset(mData, select = c(subject, activity)))

##Applying descriptive activity names to name the activities in the data set - done
labels <- tbl_dt(read.table("activity_labels.txt", header=F, stringsAsFactors=F))

for(i in 1:length(labels$V2))
        {mData$activity <- gsub(i, labels$V2[i], mData$activity)}

#Making result tidy data and saving in file
library(dplyr)
averageData <- group_by(mData, subject, activity) %>%
                                summarise_each(funs(mean))

write.table(averageData, "resTidyData.txt", row.name=FALSE)

### All done! See the result in your working dir