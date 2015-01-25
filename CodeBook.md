## Original Code Book and amendments listed beneath

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- 
The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Variables in Tidy Data set:

1. The training, testing, subject and activity dataset were combined together. 
2. Only variables that ended in mean() or std() were kept.
3. In the activity column the numbers 1-6 were relabelled using their descriptive label from activity_labels.txt file
4. In the variable names "-" and "()" were deleted and amended to lower case.
5. The names were explanded from their short abbreviations to longer more meaningful names e.g. t was expanded to time.
6. The tidy dataset contained the following variables, it is in wide format as discussed in https://class.coursera.org/getdata-010/forum/thread?thread_id=49:


[1] "timebodyaccelerationmeanx"                     
 [2] "timebodyaccelerationmeany"                     
 [3] "timebodyaccelerationmeanz"                     
 [4] "timebodyaccelerationstdx"                      
 [5] "timebodyaccelerationstdy"                      
 [6] "timebodyaccelerationstdz"                      
 [7] "timegravityaccelerationmeanx"                  
 [8] "timegravityaccelerationmeany"                  
 [9] "timegravityaccelerationmeanz"                  
[10] "timegravityaccelerationstdx"                   
[11] "timegravityaccelerationstdy"                   
[12] "timegravityaccelerationstdz"                   
[13] "timebodyaccelerationjerkmeanx"                 
[14] "timebodyaccelerationjerkmeany"                 
[15] "timebodyaccelerationjerkmeanz"                 
[16] "timebodyaccelerationjerkstdx"                  
[17] "timebodyaccelerationjerkstdy"                  
[18] "timebodyaccelerationjerkstdz"                  
[19] "timebodygyrometermeanx"                        
[20] "timebodygyrometermeany"                        
[21] "timebodygyrometermeanz"                        
[22] "timebodygyrometerstdx"                         
[23] "timebodygyrometerstdy"                         
[24] "timebodygyrometerstdz"                         
[25] "timebodygyrometerjerkmeanx"                    
[26] "timebodygyrometerjerkmeany"                    
[27] "timebodygyrometerjerkmeanz"                    
[28] "timebodygyrometerjerkstdx"                     
[29] "timebodygyrometerjerkstdy"                     
[30] "timebodygyrometerjerkstdz"                     
[31] "timebodyaccelerationmagnitudemean"             
[32] "timebodyaccelerationmagnitudestd"              
[33] "timegravityaccelerationmagnitudemean"          
[34] "timegravityaccelerationmagnitudestd"           
[35] "timebodyaccelerationjerkmagnitudemean"         
[36] "timebodyaccelerationjerkmagnitudestd"          
[37] "timebodygyrometermagnitudemean"                
[38] "timebodygyrometermagnitudestd"                 
[39] "timebodygyrometerjerkmagnitudemean"            
[40] "timebodygyrometerjerkmagnitudestd"             
[41] "frequencybodyaccelerationmeanx"                
[42] "frequencybodyaccelerationmeany"                
[43] "frequencybodyaccelerationmeanz"                
[44] "frequencybodyaccelerationstdx"                 
[45] "frequencybodyaccelerationstdy"                 
[46] "frequencybodyaccelerationstdz"                 
[47] "frequencybodyaccelerationjerkmeanx"            
[48] "frequencybodyaccelerationjerkmeany"            
[49] "frequencybodyaccelerationjerkmeanz"            
[50] "frequencybodyaccelerationjerkstdx"             
[51] "frequencybodyaccelerationjerkstdy"             
[52] "frequencybodyaccelerationjerkstdz"             
[53] "frequencybodygyrometermeanx"                   
[54] "frequencybodygyrometermeany"                   
[55] "frequencybodygyrometermeanz"                   
[56] "frequencybodygyrometerstdx"                    
[57] "frequencybodygyrometerstdy"                    
[58] "frequencybodygyrometerstdz"                    
[59] "frequencybodyaccelerationmagnitudemean"        
[60] "frequencybodyaccelerationmagnitudestd"         
[61] "frequencybodybodyaccelerationjerkmagnitudemean"
[62] "frequencybodybodyaccelerationjerkmagnitudestd" 
[63] "frequencybodybodygyrometermagnitudemean"       
[64] "frequencybodybodygyrometermagnitudestd"  

## Summary dataset

The mean was taken for each of the 64 variables grouped by subject and activity
