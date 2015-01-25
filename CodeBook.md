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
4. In the variable names "-" were amended to "_" and  "()" were deleted.
5. The names were explanded from their short abbreviations to longer more meaningful names. The tidy dataset contained the following variables:

 [1] "timeBodyAcceleration_mean_X" -                     
 [2] "timeBodyAcceleration_mean_Y"                    
 [3] "timeBodyAcceleration_mean_Z"                    
 [4] "timeBodyAcceleration_std_X"                     
 [5] "timeBodyAcceleration_std_Y"                     
 [6] "timeBodyAcceleration_std_Z"                     
 [7] "timeGravityAcceleration_mean_X"                 
 [8] "timeGravityAcceleration_mean_Y"                 
 [9] "timeGravityAcceleration_mean_Z"                 
[10] "timeGravityAcceleration_std_X"                  
[11] "timeGravityAcceleration_std_Y"                  
[12] "timeGravityAcceleration_std_Z"                  
[13] "timeBodyAccelerationJerk_mean_X"                
[14] "timeBodyAccelerationJerk_mean_Y"                
[15] "timeBodyAccelerationJerk_mean_Z"                
[16] "timeBodyAccelerationJerk_std_X"                 
[17] "timeBodyAccelerationJerk_std_Y"                 
[18] "timeBodyAccelerationJerk_std_Z"                 
[19] "timeBodyGyrometer_mean_X"                       
[20] "timeBodyGyrometer_mean_Y"                       
[21] "timeBodyGyrometer_mean_Z"                       
[22] "timeBodyGyrometer_std_X"                        
[23] "timeBodyGyrometer_std_Y"                        
[24] "timeBodyGyrometer_std_Z"                        
[25] "timeBodyGyrometerJerk_mean_X"                   
[26] "timeBodyGyrometerJerk_mean_Y"                   
[27] "timeBodyGyrometerJerk_mean_Z"                   
[28] "timeBodyGyrometerJerk_std_X"                    
[29] "timeBodyGyrometerJerk_std_Y"                    
[30] "timeBodyGyrometerJerk_std_Z"                    
[31] "timeBodyAccelerationMagnitude_mean"             
[32] "timeBodyAccelerationMagnitude_std"              
[33] "timeGravityAccelerationMagnitude_mean"          
[34] "timeGravityAccelerationMagnitude_std"           
[35] "timeBodyAccelerationJerkMagnitude_mean"         
[36] "timeBodyAccelerationJerkMagnitude_std"          
[37] "timeBodyGyrometerMagnitude_mean"                
[38] "timeBodyGyrometerMagnitude_std"                 
[39] "timeBodyGyrometerJerkMagnitude_mean"            
[40] "timeBodyGyrometerJerkMagnitude_std"       
[41] "frequencyBodyAcceleration_mean_X"               
[42] "frequencyBodyAcceleration_mean_Y"               
[43] "frequencyBodyAcceleration_mean_Z"               
[44] "frequencyBodyAcceleration_std_X"                
[45] "frequencyBodyAcceleration_std_Y"                
[46] "frequencyBodyAcceleration_std_Z"                
[47] "frequencyBodyAccelerationJerk_mean_X"           
[48] "frequencyBodyAccelerationJerk_mean_Y"           
[49] "frequencyBodyAccelerationJerk_mean_Z"           
[50] "frequencyBodyAccelerationJerk_std_X"            
[51] "frequencyBodyAccelerationJerk_std_Y"            
[52] "frequencyBodyAccelerationJerk_std_Z"            
[53] "frequencyBodyGyrometer_mean_X"                  
[54] "frequencyBodyGyrometer_mean_Y"                  
[55] "frequencyBodyGyrometer_mean_Z"                  
[56] "frequencyBodyGyrometer_std_X"                   
[57] "frequencyBodyGyrometer_std_Y"                   
[58] "frequencyBodyGyrometer_std_Z"                   
[59] "frequencyBodyAccelerationMagnitude_mean"        
[60] "frequencyBodyAccelerationMagnitude_std"         
[61] "frequencyBodyBodyAccelerationJerkMagnitude_mean"
[62] "frequencyBodyBodyAccelerationJerkMagnitude_std" 
[63] "frequencyBodyBodyGyrometerMagnitude_mean"       
[64] "frequencyBodyBodyGyrometerMagnitude_std"  

## Summary dataset

The mean was taken for each of the 64 variables grouped by subject and activity
