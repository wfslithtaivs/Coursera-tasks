Getting and Cleaning Data Course Project
=======================================

Repo contains 3 files:
  README.md
  CodeBook.md
  run_analysis.R
  
=======================================

CodeBook.md describes the variables, the data, and transformations performed 
to clean up and summarise the result tidy data set.
  
=======================================
Script run_analysis.R:

Input data: 
  files subject_train.txt, X_train.txt, y_train.txt, 
        subject_test.txt, X_test.txt, y_test.txt, features.txt, activity_labels.txt
        from given UCI HAR Dataset.

Output data: 
  file resTidyData.txt

Packages:
  dplyr

Functions:
  tbl_dt
  read.table
  data.frame
  rbind
  cbind
  names
  c
  grep
  subset
  gsub
  length
  group_by
  summarise_each
  %>%
  write.table

Script overview:
- Reading input files to data.tables.
- Merging the training and the test sets to create one data set.
- Extracting only the measurements on the mean and standard deviation for each measurement. 
- Applying descriptive activity names to name the activities in the data set
- Appropriately labeling the data set with descriptive variable names. 
- Creating independent tidy data set with the average of each variable for each activity and each subject.
- Saving new data set in the text file.

====================
