run_analysis<-function(){

#function reads in the test file and the training file and merges the two

# run from here
# setwd("~/Desktop/R_coursera/getting_data/assessment/UCI_HAR_Dataset")

##########################################################################################################
# merge the training and test datasets to make one dataset
# NB inertial folders ignored as there are no mean or std values in them
        
library(data.table)
library(dplyr)

# read in test subject, train subject and merge 
subject_test<-read.table("test/subject_test.txt")   
subject_train<-read.table("train/subject_train.txt")

subject_all<-rbind(subject_test, subject_train)
        
#reading in the test X, train X and merge

X_test<-read.table("test/X_test.txt")
X_train<-read.table("train/X_train.txt")

X_all <- rbind(X_test, X_train)

# read in test y, train y and merge

y_test<-read.table("test/y_test.txt")
y_train<-read.table("train/y_train.txt")

y_all <- rbind(y_test, y_train)

# remove single datasets to free up working memory in R

rm(X_test, X_train, y_test, y_train, subject_test, subject_train)

# put all data in one dataset

data<- data.table(subject_all, y_all, X_all)

# remove other datasets to free up working memory

rm(subject_all, y_all, X_all)

# read in the labels


activity <- read.table("activity_labels.txt")

########4#########################################################################################
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 
# means and std in columns of features (ignoring where mean is not at the end of the name)
# 1-6, 41-46, 81-86, 121-126, 161-166, 201-202, 214-215, 227-228, 240-241, 253-254, 
# 266-271, 345-350, 424-429, 503-504, 516-517, 529-530,  

mean_std_data<-c(1:6,41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241,
                    253:254,266:271,345:350,424:429,503:504, 516:517, 529:530)
# include the first two columns (subject and activity and offset the features column by 2)
get_cols<-c(1,2,mean_std_data+2)

tidy_data =data[, get_cols, with = FALSE]

######################################################################################################
#3. Uses descriptive activity names to name the activities in the data set

#names the first two columns

tidy_data <- tbl_df(tidy_data)

# get rid of duplicate column headings (V1)
get_list <- names(tidy_data)
names(tidy_data)<-c("subject", "activity", get_list[3:66])

# uses subset and mutate to set the activity labels, then joins the data set back together again

set1 <- subset(tidy_data, activity ==1)
set1 <- mutate(set1, activity_label = "walking")

set2 <- subset(tidy_data, activity ==2)
set2 <- mutate(set2, activity_label="walking_upstairs")

set3 <- subset(tidy_data, activity ==3)
set3 <- mutate(set3, activity_label = "walking_downstairs")

set4 <- subset(tidy_data, activity ==4)
set4 <- mutate(set4, activity_label = "sitting")

set5 <- subset(tidy_data, activity ==5)
set5 <- mutate(set5, activity_label = "standing")

set6 <- subset(tidy_data, activity ==6)
set6 <- mutate(set6, activity_label = "laying")

#combine back together, now grouped by activity

tidy_data2<-rbind(set1, set2, set3, set4, set5, set6)

#delete activity and replace with activity_label
tidy_data=select(tidy_data2, subject, -activity, activity_label, V1:V530)

# free up working memory
rm(tidy_data2, set1, set2, set3, set4,set5,set6)
#Labelling the columns



########################################################################################
# labels data set
# 4 Appropriately labels the data set with descriptive variable names. 
features <- read.table("features.txt")
get_labels2<- features$V2
#get_labels2<-data.frame(get_labels2)

get_labels <- gsub('-','_', get_labels2)

# replace - with _ and remove () from labels

get_labels<-get_labels[mean_std_data]
get_labels<-gsub("\\()","", get_labels)
get_labels<-gsub("Acc","Acceleration", get_labels)
get_labels<-gsub("Gyro","Gyrometer", get_labels)
get_labels<-gsub("tBody", "timeBody", get_labels)
get_labels<-gsub("tGrav", "timeGrav", get_labels)
get_labels<-gsub("fBody", "frequencyBody", get_labels)
get_labels<-gsub("fGrav", "frequencyGrav", get_labels)
get_labels<-gsub("Mag","Magnitude", get_labels)


# add labels to tidy_data

names(tidy_data)<-c("subject", "activity_label", get_labels)

#######################################################################################
#5. From the data set in step 4, creates a second, independent tidy data set with the
# average of each variable for each activity and each subject.

# arrange the data by subject and activity
by_subject_activity<-group_by(tidy_data, subject, activity_label)

# calculate the mean for each set
mean_tidy_data <- by_subject_activity %>% summarise_each(funs(mean))

write.table(mean_tidy_data, file = "mean_tidy_data.txt", row.name=FALSE)




}
