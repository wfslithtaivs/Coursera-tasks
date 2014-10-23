---
output: html_document
---
===================================================================================================

# Code Book for Getting and Cleaning Data Course Project
===================================================================================================

Input data from given UCI HAR Dataset:

        Name in the given data set      Data                            Working name
        subject_train.txt,              7352 obs. of 1 variable         subject_train 
        X_train.txt,                    7352 obs. of 561 variable       X_train
        y_train.txt,                    7352 obs. of 1 variable         y_train
        subject_test.txt,               2947 obs. of 1 variable         subject_test
        X_test.txt,                     2947 obs. of 561 variable       X_test
        y_test.txt,                     2947 obs. of 1 variable         y_test
        features.txt,                   561 obs. of 2 variable          features
        activity_labels.txt             6 obs. of 2 variables           labels
==================================================================================================

Loaded data combined into data set mData with following structure:
        * subject_train binded by rows with subject_test, the same done with y_train/y_test, X_train/X_test
        * resulted data.frames binded by columns in the "subject, y, X" order
        * resulted data.frame named with the "label" vector, "subject" <- subject, "activity" <- y
        * mData (data.frame) 10299 obs. of 563 variables (561 obs. from training data + subject + activity)
==================================================================================================

According to the task, mData was reduced to the 10299 obs. of 81 variables contained only the measurements with words "mean" and "std" in the columns names.
==================================================================================================

Reduced mData set was normalized to "tidy data" by:
        * adding activity names from "labels" 
        * normalizing columns names by removing all dots and making all the names in one style - first symbol in lower case, every following meaningful part capitalized
        
Notes: 
        * activity names didn't updated to lower case and removing underscore because it is data and shouldn't been changed during tidying
        * columns names left with some capitalized symbols just to keep readability
==================================================================================================

Resulted tidy data set "averageData" provides average time and frequency measurements
for every activity for every subject and contains 180 obs. of 81 variables.

Resulted tidy data has:

1. Each variable in a column.
2. Each observation in a row.
3. Each type of observational unit forms a table.
==================================================================================================
