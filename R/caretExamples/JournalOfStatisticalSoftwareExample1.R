


library("caret")
set.seed(1)
inTrain <- createDataPartition(mutagen, p = 3/4, list = FALSE)

trainDescr <- descr[inTrain,]
testDescr <- descr[-inTrain,]
trainClass <- mutagen[inTrain]
testClass <- mutagen[-inTrain]

prop.table(table(mutagen))

# 
# ncol(trainDescr)
# descrCorr <- cor(trainDescr)
# highCorr <- findCorrelation(descrCorr, 0.90)
# trainDescr <- trainDescr[, -highCorr]
# testDescr <- testDescr[, -highCorr]
# ncol(trainDescr)

xTrans <- preProcess(trainDescr)
trainDescr <- predict(xTrans, trainDescr)
testDescr <- predict(xTrans, testDescr)
