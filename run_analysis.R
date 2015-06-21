
## Download zipped data, unzip, and read extracted data files to dataframes
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL,destfile="getdataproj.zip")

unzip("getdataproj.zip")

subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")

subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")


## Merge the test data frames together horizontally (ie. prepend subjectTest
## and yTest as columns to xTest); and separately perform a similar merging
## for train. Then merge the two resulting data frames vertically
## (ie. append train as rows to test)
test <- cbind(subjectTest,yTest,xTest)
train <- cbind(subjectTrain,yTrain,xTrain)

fullDataset <- rbind(test,train)


## Read features.txt and activity_labels.txt, and use them to help
## label the columns and the numeric levels used for Activities
features <- read.table("UCI HAR Dataset/features.txt")
features <- as.character(features[,2])
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels <- as.character(activityLabels[,2])

names(fullDataset)[1] <- "Subject"
names(fullDataset)[2] <- "Activity"
names(fullDataset)[3:563] <- features


## Replace the integer values for Activity with descriptive English-language
## values. Construct an auxillary character vector to avoid issues from
## mixing character and integer values in the same vector while looping
aux <- character(nrow(fullDataset))
for(i in 1:nrow(fullDataset)){
     aux[i] <- activityLabels[fullDataset$Activity[i]]
}
fullDataset$Activity <- aux


## We wish to extract only the mean and standard deviation measurements,
## so we identify those labels that contain the strings "mean()" and
## "std()", respectively we do so by recognising that these descriptors
## are always preceded in the labels by the character "-"
featuresList <- strsplit(features,"\\-")
featuresExtract <- character(length(featuresList))
for(i in 1:length(featuresList)){ featuresExtract[i] <- featuresList[[i]][2] }

## We have already merged the Subject and Activity columns onto
## the left of the data frame, so we must offset by +2 the indexes
## of the mean and std measurements
meanIndexes <- 2 + which(featuresExtract == "mean()")
stdIndexes <- 2 + which(featuresExtract == "std()")


## Excise those columns not containing Subject, Activity, means, or stds
extractedDataset <- fullDataset[,sort(c(1,2,meanIndexes,stdIndexes))]

## Improve readability of column labels by substituting or removing
## certain characters
names(extractedDataset) <- gsub("\\(\\)", "", names(extractedDataset))
names(extractedDataset) <- gsub("-", "", names(extractedDataset))
names(extractedDataset) <- gsub("mean", "Mean", names(extractedDataset))
names(extractedDataset) <- gsub("std", "Std", names(extractedDataset))
names(extractedDataset) <- gsub("BodyBody", "Body", names(extractedDataset))


## We build the tidy dataset of means of the measurements for each 
## Subject/Activity pairing. We calculate the means using tapply and a
## double index, which in each instance results in a matrix with Subjects
## for row names and Activities for column names.
##
## Each of these matrices is unpacked as a vector into the corresponding
## column of the tidy data frame, using the c() fucntion.
##
## Note that we specifically use the tapply double index (Activity, Subject)
## because c() unpacks a matrix as a sequence of columns, and we choose
## to have Subject be ordered first.
##
## It is essential to note that row/col names are sorted lexicographically
## in the output matrix when using tapply in this way; this informs us how
## to order the repeated entries in the Subject and Activity columns.
##
## First we create book-keeping variables to track the sets of unique values
## of Subject and Activity and their counts.
uSubs <- unique(extractedDataset$Subject)
nSubs <- length(uSubs)
uActs <- unique(extractedDataset$Activity)
nActs <- length(uActs)

## Next we build the actual tidy data frame by binding the columns together
## as we construct them. The Subject values are all grouped together by
## repeating then sorting, whereas the Activity values are sorted then
## repeated, being interpreted as secondary to the Subject index.
finalData <- data.frame(sort(rep(uSubs,nActs)))
finalData <- cbind(finalData,
                   rep(sort(unique(extractedDataset$Activity)),nSubs))

for(i in 3:length(names(extractedDataset))){
    tempMeans <- tapply(extractedDataset[[i]],list(extractedDataset$Activity,
                                                extractedDataset$Subject),mean)
    finalData <- cbind(finalData,c(tempMeans))
}

## Lastly we name the tidy data columns
names(finalData) <- names(extractedDataset)


## Finally, we output our tiday data to a text file
write.table(finalData,file="GetDataProjTidyData.txt",row.names=FALSE)

