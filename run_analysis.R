library(plyr)

# The sequence of operations is critical. All raw data is first read in.  Then the
# test and training data are combined for each of the measures, subjects, and
# activities.
#
# After that the variables are filtered and combined with the activity names and 
# and subjects.

testMeasures    <- read.table(file="UCI HAR Dataset/test/X_test.txt", header = FALSE)
trainMeasures   <- read.table(file="UCI HAR Dataset/train/X_train.txt", header = FALSE)

# Combine the test and training measures
measures        <- rbind(testMeasures, trainMeasures)

# Read the list of features that correspond to the observations of the measures
features <- read.table('UCI HAR Dataset/features.txt', row.names=1)

# Set the names of the observations to the feature list
names(measures) <- features[,1]

# Subset the observations to those that include 'mean' or 'std'
measures        <- measures[,grep('mean|std', names(measures))]

testActivities  <- read.table(file="UCI HAR Dataset/test/y_test.txt", header = FALSE)
trainActivities <- read.table(file="UCI HAR Dataset/train/y_train.txt", header = FALSE)
activityNames   <- read.table('UCI HAR Dataset/activity_labels.txt', )

# Combine the test and training activities and convert to a factor
activities      <- activityNames[unlist(rbind(testActivities, trainActivities)), 2]

testSubjects    <- read.table(file="UCI HAR Dataset/test/subject_test.txt")
trainSubjects   <- read.table(file="UCI HAR Dataset/train/subject_train.txt")

# Combine the subjects into a single factor
subjects        <- as.factor(unlist(rbind(testSubjects, trainSubjects)[,1]))

# Modify the measures to include the activity names
measures <- mutate(measures, Activity=activities, Subject=subjects)

# Convert to long form with 3rd variable for the feature
longMeasures    <- melt(measures, c('Activity', 'Subject'))

# Group by Subject, Activity
groupedMeasures <- dcast(longMeasures, Subject + Activity ~ variable, mean)

write.table(groupedMeasures, file='summary.txt', row.name=FALSE)

