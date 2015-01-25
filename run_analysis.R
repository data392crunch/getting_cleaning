##Task 1 - Merging test and training datasets
## Read test data activity indexes and subject indexes
## into data frames
test_activities <- read.table("y_test.txt", stringsAsFactors=FALSE)
test_subjects <- read.table("subject_test.txt", stringsAsFactors=FALSE)

## Read the main file of test data (gives 2947 obs, 561 vars)
test_main <- read.table("X_test.txt", stringsAsFactors=FALSE)

## Add columns with test activity and test subject data
## to test dataset (gives 2947 obs and 563 variables)
test_main$activity <- test_activities[,1]
test_main$subject <- test_subjects[,1]

## Repeat the procedure for the training dataset (7352 obs)
train_activities <- read.table("y_train.txt", stringsAsFactors=FALSE)
train_subjects <- read.table("subject_train.txt", stringsAsFactors=FALSE)
train_main <- read.table("X_train.txt",stringsAsFactors=FALSE)
## train_main has 7352 obs of 561 vars
train_main$activity <- train_activities[,1]
train_main$subject <- train_subjects[,1]
## train_main now has 7352 obs of 563 variables

## Join the test_main and train_main dataset by adding their 
## rows together (gives a dataset of 10299 obs and 563 vars)
hum_act <- rbind(test_main, train_main)

## Removing large data objects that we no longer need
rm(c(test_main, train_main))
## End of Task1

##Task 2 - Extracting mean and std dev measurements
## Loading the variable names
column_variables <- read.table("features.txt", stringsAsFactors=FALSE)

## Add the 2 variables, "activity" and "subject" to variables
## Create a data frame to contain the variables to be added
new_vars <- data.frame(V1=c(562, 563), V2=c("activity", "subject"))
## Add new variables as rows to the variables data frame
col_vars <- rbind(column_variables, new_vars)

## Next job is to select out the column variables required
## We just record the rows we want by listing their numbers
## in a vector
wanted_variables <- c(1:6,41:46,81:86,121:126,161:166,201:202,
214:215,227:228,240:241,253:254,266:271,345:350,424:429,
503,504,516:517,529:530,542:543,562:563)
## Now we extract the wanted ones by the indexing method
vars_reqd <- col_vars[wanted_variables,]
## We can also now select wanted variables from the main data
hum_act_subset <- hum_act[,wanted_variables]
## We now have a data frame of 10299 obs of 68 variables
## Plus a data frame with the 68 unimproved variable names

## Task 3 Replace the activity codes with text names
hum_act_subset$activity[hum_act_subset$activity==1] = "WALKING"
hum_act_subset$activity[hum_act_subset$activity==2] = "WALKING_UPSTAIRS"
hum_act_subset$activity[hum_act_subset$activity==3] = "WALKING_DOWNSTAIRS"
hum_act_subset$activity[hum_act_subset$activity==4] = "SITTING"
hum_act_subset$activity[hum_act_subset$activity==5] = "STANDING"
hum_act_subset$activity[hum_act_subset$activity==6] = "LAYING"

## Task 4 Apply more descriptive variable names to dataset
## First output a text file for editing in a text editor
write.table(vars_reqd, file = "unimproved_variables.txt")
## After editing read it back
better_vars <- read.table("better_variables.txt",stringsAsFactors=FALSE)
## Now apply the variable names to the columns of the main data
colnames(hum_act_subset) <- better_vars[,2]

## Task 5 Create a tidy dataset with the average for each
## variable by activity and by subject
library(dplyr)
tidy_activity_groups <- group_by(hum_act_subset, activity)
tidy_act_sub_grps <- group_by(tidy_activity_groups, subject)
tidy_set <- summarise_each(tidy_act_sub_grps, funs(mean),-subject,-activity)
write.table(tidy_set, file = "tidy_set.txt", row.names=FALSE)
## That completes the task script