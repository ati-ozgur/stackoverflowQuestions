
source("./caretExamples/ApmChapter4a.R")

set.seed(1)

repeatedSplits <- createDataPartition(trainClasses, p =.8,times=3)

set.seed(1)

cvSplits <- createFolds(trainClasses, k =10,returnTrain=TRUE)
str(cvSplits)

fold1 <- cvSplits[[1]]

cvPredictors1 <- trainPredictors[fold1,]
cvClasses1 <- trainClasses[fold1]

nrow(cvPredictors1)




