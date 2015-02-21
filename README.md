# 3-Getting-and-Cleaning-Data
3 Getting and Cleaning Data


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


