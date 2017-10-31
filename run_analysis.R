library(reshape2)
library(dplyr)
library(data.table)

#Download & unzip data
zip_data <- "getdata_dataset.zip"

if (!file.exists(zip_data)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, zip_data, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(zip_data) 
}

setwd("UCI HAR Dataset") # set working directory

#################################################
# READ TRAINING, TEST, FEATURES & ACTIVITY DATA #
#################################################

#TRAINING DATA
training_subject<- read.table("train/subject_train.txt")
training_data<- read.table("train/X_train.txt")
training_activity<- read.table("train/y_train.txt")

#TEST DATA
test_subject<- read.table("test/subject_test.txt")
test_data<- read.table("test/X_test.txt")
test_activity<- read.table("test/y_test.txt")

#FEATURE DATA
features<- read.table("features.txt")
features[,2] <- as.character(features[,2])

#ACTIVITY DATA
activity_labels<- read.table("activity_labels.txt")
colnames(activity_labels) <- c("activity_id", "activity_labels")

########################################
# 1. Merge data and create one dataset #
########################################
 
train_all <- cbind(training_subject, training_data, training_activity)
names(train_all) <- c("subject", features[,2], "activity")

#Test
test_all <- cbind(test_subject, test_data, test_activity)
names(test_all) <- c("subject", features[,2], "activity")

#Merge two dataset into one
all_activity <- rbind(train_all, test_all)

#remove old datasets
rm(training_subject,training_data, training_activity,test_subject,test_data, test_activity, train_all, test_all)

################################
# 2. Extract only mean and sdv #
################################

#keep only columns of mean,sdv, subject and activity
cols_to_keep <- grepl("subject|activity|mean|std", colnames(all_activity))
all_activity <- subset(all_activity, select = cols_to_keep)

###########################################
# 3. Rename activity with activity labels #
###########################################
#replace the activity id with activity description on all_activity data set
all_activity <-merge(all_activity, activity_labels, by.x = "activity", by.y = "activity_id")
all_activity <- all_activity[,-1]   #remove first column which contains activity id because we keep activity 
                                    #description on last column
names(all_activity)[names(all_activity) == 'activity_labels'] <- 'activity' #rename last column from activity_labels to activity

################################
# 4. Create appropriate labels #
################################

names(all_activity) <- gsub("[\\(\\)-]", "", names(all_activity)) #remove all special characters
names(all_activity) <- gsub("^t", "timePart", names(all_activity))
names(all_activity) <- gsub("^f", "freqPart", names(all_activity))
names(all_activity) <- gsub("mean", "Mean", names(all_activity))
names(all_activity) <- gsub("std", "StandardDeviation", names(all_activity))

names(all_activity) <- gsub("Acc", "Accelerometer", names(all_activity))
names(all_activity) <- gsub("Gyro", "Gyroscope", names(all_activity))
names(all_activity) <- gsub("Mag", "Magnitude", names(all_activity))
names(all_activity) <- gsub("Freq", "Frequency", names(all_activity))

names(all_activity) <- gsub("BodyBody", "Body", names(all_activity))

##########################
# 5. Create tidy dataset #
##########################

#calculate mean of all variables group by subject and activity (using data.table package)
all_activity_mean <- as.data.table(all_activity)[, lapply(.SD, mean), by = list(subject, activity)]

#write new dataset 
write.table(all_activity_mean, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)