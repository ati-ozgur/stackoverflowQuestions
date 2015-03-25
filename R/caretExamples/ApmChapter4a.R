library(AppliedPredictiveModeling)
data(twoClassData)
str(predictors)
str(classes)
set.seed(1)
library(caret)
trainingRows <- createDataPartition(classes,p=0.8,list=FALSE)
head(trainingRows)
trainPredictors <- predictors[trainingRows,]
trainClasses <- classes[trainingRows]
testPredictors <- predictors[-trainingRows,]
testClasses <- classes[-trainingRows]
str(trainPredictors)
str(testPredictors)
