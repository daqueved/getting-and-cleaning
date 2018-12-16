#Install and/or load dplyr
if ("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
library(dplyr)

#Create a project dir, download and unzip the file
if (!file.exists("project")) {dir.create("project")}
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, destfile = "./project/dataset.zip")
unzip("./project/dataset.zip", exdir = "./project")
file.rename("./project/UCI HAR Dataset", "./project/hardataset")
datedownloaded <- date()

#Read the raw data and assign variables names
subtest <- read.table("./project/hardataset/test/subject_test.txt")
testx <- read.table("./project/hardataset/test/X_test.txt")
testy <- read.table("./project/hardataset/test/Y_test.txt")

subtrain <- read.table("./project/hardataset/train/subject_train.txt")
trainx <- read.table("./project/hardataset/train/X_train.txt")
trainy <- read.table("./project/hardataset/train/Y_train.txt")

actlabel <- read.table("./project/hardataset/activity_labels.txt")

feat <- read.table("./project/hardataset/features.txt")
varnames <- as.vector(feat$V2)

colnames(trainy) <- "activity"; colnames(testy) <- "activity"
colnames(trainx) <- varnames ; colnames(testx) <- varnames
colnames(subtrain) <- "id" ; colnames(subtest) <- "id"

#1. Merge the datasets
train <- cbind(subtrain, trainy, trainx)
test <- cbind(subtest, testy, testx)

fulldata <- rbind(train, test)

#2. Select columns
columns <- grepl("id|activity|mean|std", colnames(fulldata))
tidydata <- fulldata[,columns]
tidydata <- select(tidydata, -(contains("meanFreq")))

#3. Assign activity labels
tidydata$activity <- factor(tidydata$activity, levels= actlabel$V1, labels =actlabel$V2)

#4. Improve variable names
varnames <- colnames(tidydata)

originalcol <- c("[\\(\\)-]", "^f", "^t", "Acc", "Gyro", "Mag", "BodyBody")
changecol <- c("", "frequency", "time", "accelerometer", "gyroscope", "magnitud", "body")
long <- length(originalcol)

for (i in 1:long){varnames <- gsub(originalcol[i], changecol[i], varnames)}
colnames(tidydata) <- varnames

tidydata <- tbl_df(tidydata)

#5 Group and summarize data
tidymean <- tidydata %>% group_by(id, activity) %>% summarise_all(funs(mean))
write.table(tidymean, "group_with_mean.txt", row.names = FALSE)