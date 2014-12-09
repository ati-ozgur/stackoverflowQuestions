library("caret")
set.seed(1)
inTrain <- createDataPartition(mutagen, p = 3/4, list = FALSE)

trainDescr <- descr[inTrain,]
testDescr <- descr[-inTrain,]
trainClass <- mutagen[inTrain]
testClass <- mutagen[-inTrain]

prop.table(table(mutagen))
