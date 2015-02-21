Getting and Cleaning Data, Course Project
CodeBook

Subject
	Integer from 1 to 30, representing subjects 1-30

Activity
	One of six text strings
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

variable
	One of 81 variables, that was calculated from measurements. The description of each is given in the
	fatures.info file.

		"Subject"                        
		"Activity"                       
		"tBodyAcc.mean...X"              
		"tBodyAcc.mean...Y"              
		"tBodyAcc.mean...Z"              
		"tBodyAcc.std...X"               
		"tBodyAcc.std...Y"               
		"tBodyAcc.std...Z"               
		"tGravityAcc.mean...X"           
		"tGravityAcc.mean...Y"           
		"tGravityAcc.mean...Z"           
		"tGravityAcc.std...X"            
		"tGravityAcc.std...Y"            
		"tGravityAcc.std...Z"            
		"tBodyAccJerk.mean...X"          
		"tBodyAccJerk.mean...Y"          
		"tBodyAccJerk.mean...Z"          
		"tBodyAccJerk.std...X"           
		"tBodyAccJerk.std...Y"           
		"tBodyAccJerk.std...Z"           
		"tBodyGyro.mean...X"             
		"tBodyGyro.mean...Y"             
		"tBodyGyro.mean...Z"             
		"tBodyGyro.std...X"              
		"tBodyGyro.std...Y"              
		"tBodyGyro.std...Z"              
		"tBodyGyroJerk.mean...X"         
		"tBodyGyroJerk.mean...Y"         
		"tBodyGyroJerk.mean...Z"         
		"tBodyGyroJerk.std...X"          
		"tBodyGyroJerk.std...Y"          
		"tBodyGyroJerk.std...Z"          
		"tBodyAccMag.mean.."             
		"tBodyAccMag.std.."              
		"tGravityAccMag.mean.."          
		"tGravityAccMag.std.."           
		"tBodyAccJerkMag.mean.."         
		"tBodyAccJerkMag.std.."          
		"tBodyGyroMag.mean.."            
		"tBodyGyroMag.std.."             
		"tBodyGyroJerkMag.mean.."        
		"tBodyGyroJerkMag.std.."         
		"fBodyAcc.mean...X"              
		"fBodyAcc.mean...Y"              
		"fBodyAcc.mean...Z"              
		"fBodyAcc.std...X"               
		"fBodyAcc.std...Y"               
		"fBodyAcc.std...Z"               
		"fBodyAcc.meanFreq...X"          
		"fBodyAcc.meanFreq...Y"          
		"fBodyAcc.meanFreq...Z"          
		"fBodyAccJerk.mean...X"          
		"fBodyAccJerk.mean...Y"          
		"fBodyAccJerk.mean...Z"          
		"fBodyAccJerk.std...X"           
		"fBodyAccJerk.std...Y"           
		"fBodyAccJerk.std...Z"           
		"fBodyAccJerk.meanFreq...X"      
		"fBodyAccJerk.meanFreq...Y"      
		"fBodyAccJerk.meanFreq...Z"      
		"fBodyGyro.mean...X"             
		"fBodyGyro.mean...Y"             
		"fBodyGyro.mean...Z"             
		"fBodyGyro.std...X"              
		"fBodyGyro.std...Y"              
		"fBodyGyro.std...Z"              
		"fBodyGyro.meanFreq...X"         
		"fBodyGyro.meanFreq...Y"         
		"fBodyGyro.meanFreq...Z"         
		"fBodyAccMag.mean.."             
		"fBodyAccMag.std.."              
		"fBodyAccMag.meanFreq.."         
		"fBodyBodyAccJerkMag.mean.."     
		"fBodyBodyAccJerkMag.std.."      
		"fBodyBodyAccJerkMag.meanFreq.." 
		"fBodyBodyGyroMag.mean.."        
		"fBodyBodyGyroMag.std.."         
		"fBodyBodyGyroMag.meanFreq.."    
		"fBodyBodyGyroJerkMag.mean.."    
		"fBodyBodyGyroJerkMag.std.."     
		"fBodyBodyGyroJerkMag.meanFreq.."


Mean 
	A decimal number giving the average value of the variable named in the row
		

----------------------------------------------------------------------------------------------------------------------

This was based on the following original codebook.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

-----------------------------------------------------------------------------------------------------------------------

Transformation done include the following:



Steps in completing the assignment. These steps correspond to comments in the code.

1. Set the environment correctly: Change to the appropriate working directory.
2. Download the data from the website.
3. Load all training and test data (all 3 files each).
	subject_train (list of subjects)
	X_train	(all 561 variables)
	Y_train (the list of activities for each row of X-train)
4. Replace Activity numbers by reading them from the activity_labels.txt file, and merging the activity-labes with Y_Train and Y_Test. This will leave Y_Train and Y_Test files with activity names instead of numbers.
5. Merge the observational data - first merge the three files from each set to create a train and a test file, and then combine them into one
6. Remove data frames no longer needed. At this stage there should be only one. This is just good practice to preserve memory.
7. Assign the first two columns of this new data frame names - "Subject" and "Actvity". For the remaining columns, get names from features.txt (as text, not as factors), and assign them. We could have done this before step 4, but we chose to do it here.
8. Now, keep Subject and Activity columns and from the remaining columns, only those that have "mean" and "std" substrings in them.  This keeps all mean and standard deviations.
9. Tidy up this data set by melting. So, now we have a new table with four columns - Subject, Activity, the variable correponding to the mean/std columns from above, and the average value for the combination. So each row has 3 indices and one value. This is what was asked for.




