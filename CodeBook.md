# CodeBook
## HAR Dataset

This codebook contains the changes made to the HAR Dataset to obtain a tidy dataset. 

There were used 8 main files of the HAR Dataset:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt' and 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

All the changes applied are described below:

1. Assign the variable name (features) for each dataset
2. Merge the id (subject_) and activity (y_test/train) data with each of the test and train dataset (x_...)
3. Combine the complete train and test datasets
4. Select the variables columns which contain mean and standard deviation
5. Assign the descriptive activity names (activity_labels) in the data set
6. Change the variables names making them more understandable
7. Creates an independent tidy data set with the average of each variable for each activity and each subject (group_by id and activity).

### The output:

tidymean (dataset)

A tibble: 180 x 68
Groups:   id [?]

 [1] "id"                                        
 [2] "activity"                                  
 [3] "timeBodyaccelerometermeanX"                
 [4] "timeBodyaccelerometermeanY"                
 [5] "timeBodyaccelerometermeanZ"                
 [6] "timeBodyaccelerometerstdX"                 
 [7] "timeBodyaccelerometerstdY"                 
 [8] "timeBodyaccelerometerstdZ"                 
 [9] "timeGravityaccelerometermeanX"             
[10] "timeGravityaccelerometermeanY"             
[11] "timeGravityaccelerometermeanZ"             
[12] "timeGravityaccelerometerstdX"              
[13] "timeGravityaccelerometerstdY"              
[14] "timeGravityaccelerometerstdZ"              
[15] "timeBodyaccelerometerJerkmeanX"            
[16] "timeBodyaccelerometerJerkmeanY"            
[17] "timeBodyaccelerometerJerkmeanZ"            
[18] "timeBodyaccelerometerJerkstdX"             
[19] "timeBodyaccelerometerJerkstdY"             
[20] "timeBodyaccelerometerJerkstdZ"             
[21] "timeBodygyroscopemeanX"                    
[22] "timeBodygyroscopemeanY"                    
[23] "timeBodygyroscopemeanZ"                    
[24] "timeBodygyroscopestdX"                     
[25] "timeBodygyroscopestdY"                     
[26] "timeBodygyroscopestdZ"                     
[27] "timeBodygyroscopeJerkmeanX"                
[28] "timeBodygyroscopeJerkmeanY"                
[29] "timeBodygyroscopeJerkmeanZ"                
[30] "timeBodygyroscopeJerkstdX"                 
[31] "timeBodygyroscopeJerkstdY"                 
[32] "timeBodygyroscopeJerkstdZ"                 
[33] "timeBodyaccelerometermagnitudmean"         
[34] "timeBodyaccelerometermagnitudstd"          
[35] "timeGravityaccelerometermagnitudmean"      
[36] "timeGravityaccelerometermagnitudstd"       
[37] "timeBodyaccelerometerJerkmagnitudmean"     
[38] "timeBodyaccelerometerJerkmagnitudstd"      
[39] "timeBodygyroscopemagnitudmean"             
[40] "timeBodygyroscopemagnitudstd"              
[41] "timeBodygyroscopeJerkmagnitudmean"         
[42] "timeBodygyroscopeJerkmagnitudstd"          
[43] "frequencyBodyaccelerometermeanX"           
[44] "frequencyBodyaccelerometermeanY"           
[45] "frequencyBodyaccelerometermeanZ"           
[46] "frequencyBodyaccelerometerstdX"            
[47] "frequencyBodyaccelerometerstdY"            
[48] "frequencyBodyaccelerometerstdZ"            
[49] "frequencyBodyaccelerometerJerkmeanX"       
[50] "frequencyBodyaccelerometerJerkmeanY"       
[51] "frequencyBodyaccelerometerJerkmeanZ"       
[52] "frequencyBodyaccelerometerJerkstdX"        
[53] "frequencyBodyaccelerometerJerkstdY"        
[54] "frequencyBodyaccelerometerJerkstdZ"        
[55] "frequencyBodygyroscopemeanX"               
[56] "frequencyBodygyroscopemeanY"               
[57] "frequencyBodygyroscopemeanZ"               
[58] "frequencyBodygyroscopestdX"                
[59] "frequencyBodygyroscopestdY"                
[60] "frequencyBodygyroscopestdZ"                
[61] "frequencyBodyaccelerometermagnitudmean"    
[62] "frequencyBodyaccelerometermagnitudstd"     
[63] "frequencybodyaccelerometerJerkmagnitudmean"
[64] "frequencybodyaccelerometerJerkmagnitudstd" 
[65] "frequencybodygyroscopemagnitudmean"        
[66] "frequencybodygyroscopemagnitudstd"         
[67] "frequencybodygyroscopeJerkmagnitudmean"    
[68] "frequencybodygyroscopeJerkmagnitudstd"
