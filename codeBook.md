Code Book
This shows in details the processing done to arrive at the tidy data.

Overview
30 volunteers performed 6 different activity with a cell phone attached to them.

Explanation of each file
features.txt: Names of the 561 features.
activity_labels.txt: Names and IDs for each of the 6 activities.

Training Data - This is the training data of 21 participants
X_train.txt:  7352 observations of the 561 features, for 21 of the 30 volunteers.
subject_train.txt: A vector of 7352 integers, denoting the ID of the volunteer related to each of the observations in X_train.txt.
y_train.txt: A vector of 7352 integers, denoting the ID of the activity related to each of the observations in X_train.txt.

Test Data - 2947 observations
X_test.txt: 2947 observations of the 561 features, for 9 of the 30 volunteers.
subject_test.txt: A vector of 2947 integers, denoting the ID of the volunteer related to each of the observations in X_test.txt.
y_test.txt: A vector of 2947 integers, denoting the ID of the activity related to each of the observations in X_test.txt.

features_info.txt contains more details about the features.

Data files that were not used
Raw files were not used for this analysis.

Processing steps
All of the relevant data files were read into data frames, appropriate column headers were added, and the training and test sets were combined into a single data set.
All feature columns were removed that did not contain the exact string "mean()" or "std()" or "activity" or "studentID". these were 68 columns in all.
The activity column was converted from a integer to a factor, using labels describing the activities.
A tidy data set was created containing the mean of each feature for each subject and each activity. Thus, subject #1 has 6 rows in the tidy data set (one row for each activity), and each row contains the mean value for each of the 66 features for that subject/activity combination. Since there are 30 subjects, there are a total of 180 rows.
The tidy data set was output to a txt file.