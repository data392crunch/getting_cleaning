###This is the Codebook for the "tidy_set.txt" project

The main file received as part of the project data's variables is the text file named "features.txt" it is included in this repository.

The instruction for this project was that we should extract a subset of these variables so as to include only those denoting a measurement of a "mean() or std() plus the "activity" and "subject" variables. This reduced the number of variables to 68 and was done in project Task 2.

The "activity" variable values were initially integers representing text descriptions  as per the file "activity_labels.txt". In the project Task 3, the data in the variable column was changed from integers to the corresponding activity label.

In the final operation to produce "tidy_set.txt" an average was computed for each variable by activity by subject.

The activity variable (V562) was re-named "activity".

The subject variable (V563) was re-named "subject".

A further modification to the variables was that the descriptions had to be improved. For the variable names a text editor was used to search and replace hyphens with underscores, brackets eliminated, the initials "t" and "f" expanded to "time" and "freq". Also expanded was "acc" to Acceler and added "direction" after X Y and Z.

## The result was:

"V1" "V2"
"1" 1 "timeBodyAcceler_mean_X_direction"
"2" 2 "timeBodyAcceler_mean_Y_direction"
"3" 3 "timeBodyAcceler_mean_Z_direction"
"4" 4 "timeBodyAcceler_std_X_direction"
"5" 5 "timeBodyAcceler_std_Y_direction"
"6" 6 "timeBodyAcceler_std_Z_direction"
"41" 41 "timeGravityAcceler_mean_X_direction"
"42" 42 "timeGravityAcceler_mean_Y_direction"
"43" 43 "timeGravityAcceler_mean_Z_direction"
"44" 44 "timeGravityAcceler_std_X_direction"
"45" 45 "timeGravityAcceler_std_Y_direction"
"46" 46 "timeGravityAcceler_std_Z_direction"
"81" 81 "timeBodyAccelerJerk_mean_X_direction"
"82" 82 "timeBodyAccelerJerk_mean_Y_direction"
"83" 83 "timeBodyAccelerJerk_mean_Z_direction"
"84" 84 "timeBodyAccelerJerk_std_X_direction"
"85" 85 "timeBodyAccelerJerk_std_Y_direction"
"86" 86 "timeBodyAccelerJerk_std_Z_direction"
"121" 121 "timeBodyGyro_mean_X_direction"
"122" 122 "timeBodyGyro_mean_Y_direction"
"123" 123 "timeBodyGyro_mean_Z_direction"
"124" 124 "timeBodyGyro_std_X_direction"
"125" 125 "timeBodyGyro_std_Y_direction"
"126" 126 "timeBodyGyro_std_Z_direction"
"161" 161 "timeBodyGyroJerk_mean_X_direction"
"162" 162 "timeBodyGyroJerk_mean_Y_direction"
"163" 163 "timeBodyGyroJerk_mean_Z_direction"
"164" 164 "timeBodyGyroJerk_std_X_direction"
"165" 165 "timeBodyGyroJerk_std_Y_direction"
"166" 166 "timeBodyGyroJerk_std_Z_direction"
"201" 201 "timeBodyAccelerMagnitude_mean"
"202" 202 "timeBodyAccelerMagnitude_std"
"214" 214 "timeGravityAccelerMagnitude_mean"
"215" 215 "timeGravityAccelerMagnitude_std"
"227" 227 "timeBodyAccelerJerkMagnitude_mean"
"228" 228 "timeBodyAccelerJerkMagnitude_std"
"240" 240 "timeBodyGyroMagnitude_mean"
"241" 241 "timeBodyGyroMagnitude_std"
"253" 253 "timeBodyGyroJerkMagnitude_mean"
"254" 254 "timeBodyGyroJerkMagnitude_std"
"266" 266 "freqBodyAcceler_mean_X_direction"
"267" 267 "freqBodyAcceler_mean_Y_direction"
"268" 268 "freqBodyAcceler_mean_Z_direction"
"269" 269 "freqBodyAcceler_std_X_direction"
"270" 270 "freqBodyAcceler_std_Y_direction"
"271" 271 "freqBodyAcceler_std_Z_direction"
"345" 345 "freqBodyAccelerJerk_mean_X_direction"
"346" 346 "freqBodyAccelerJerk_mean_Y_direction"
"347" 347 "freqBodyAccelerJerk_mean_Z_direction"
"348" 348 "freqBodyAccelerJerk_std_X_direction"
"349" 349 "freqBodyAccelerJerk_std_Y_direction"
"350" 350 "freqBodyAccelerJerk_std_Z_direction"
"424" 424 "freqBodyGyro_mean_X_direction"
"425" 425 "freqBodyGyro_mean_Y_direction"
"426" 426 "freqBodyGyro_mean_Z_direction"
"427" 427 "freqBodyGyro_std_X_direction"
"428" 428 "freqBodyGyro_std_Y_direction"
"429" 429 "freqBodyGyro_std_Z_direction"
"503" 503 "freqBodyAccelerMagnitude_mean"
"504" 504 "freqBodyAccelerMagnitude_std"
"516" 516 "freqBodyAccelerJerkMagnitude_mean"
"517" 517 "freqBodyAccelerJerkMagnitude_std"
"529" 529 "freqBodyGyroMagnitude_mean"
"530" 530 "freqBodyGyroMagnitude_std"
"542" 542 "freqBodyGyroJerkMagnitude_mean"
"543" 543 "freqBodyGyroJerkMagnitude_std"
"562" 562 "activity"
"563" 563 "subject"
 