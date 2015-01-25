The run_analysis.R file is run from inside the UCI HAR Dataset folder


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
For part 1:

Four datasets are read for the train and test groups - test/subject_test.txt, train/subject_train.txt, test/X_test.txt, train/X_train.txt test/y_test.txt and 
train/y_train.txt

The datasets in the Inertial Signals folders are not read in as they are not used in the later work. 

These datasets were combined together using rbind:
- X_test and X_train to make X_all
- y_test and y_train to make y_all
- subject_test and subject_train to make subject_all

A data table was made by adding combining the three tables in the following order:

dt = [subject_all X_all y_all]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
For part 2:

Only the activity labels that ended with mean() or std() were kept, columns that did not have this ending were removed from the data table using indexing.

As the first two columns contained the subject and activity the columns kept
had plus 2 added (get_cols<-c(1,2,mean_std_data+2)) where mean_std_data
was an index of all the labels ending with mean() or std().

There were other labels that contained the word Mean in the description 
however for the purpose of this exercise they were ignored. 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
For part 3:

The first three columns had the same name (V1) so the first and second columns
were renamed to "subject" and "activity". 

The activity numbers in the activity column were replaced with  descriptions 
from the activity_labels.txt file by:

1. Using subset to get all the rows where the actvity number is the same
2. Using mutate to create a new column that contains the descriptive label

All the six subsets (one for each activity) were combined together using rbind
The activity column was replaced with activity_label column

################################################################################
For part 4:

The parts of the labels that interfere with R programs ("-" and "()" )  
were removed using gsub

All abbreviations in the labels were replaced with descriptive labels 
- t went to time
- f went to frequency
- Acc went to  Acceleration
- Gyro went to Gyrometer
- Mag went to  Magnitude

More explanation of their meaning is in the CodeBook.md

The column names (V1:V64) were replaced with these labels using the same
 indexing as part 2 so that only mean and std names were included

As the resulting data was tidy data in a wide format as per
the discussions by David Hood (https://class.coursera.org/getdata-010/forum/thread?thread_id=49), it was left as it was.

###############################################################################
For part 5:

The tidy data set was grouped by subject and activity

The mean of each column by each group was calculated

The output was saved using write.table with row.name = FALSE as the instructions ask.

