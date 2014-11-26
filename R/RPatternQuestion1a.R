# http://stackoverflow.com/questions/27151750/how-to-simulate-data-properly#27151750
# Basic info taken from Data Science Exploratory Analysis Course
# http://datasciencespecialization.github.io/courses/04_ExploratoryAnalysis/

set.seed(1122)  

rowNumber = 1000

count<-rpois(rowNumber,30)  
in.var1<- rnorm(rowNumber, mean = 25, sd = 3)
in.var2<- rnorm(rowNumber, mean = 12, sd = 2)
data<-cbind(count,in.var1,in.var2)


dataNew <- data



for (i in 1:rowNumber) {
  # flip a coin
  coinFlip <- rbinom(1, size = 1, prob = 0.5)
  # if coin is heads add a common pattern to that row
  if (coinFlip) {
    dataNew[i,"count"] <- 2 * data[i,"in.var1"] + 10*   data[i,"in.var2"]
  }
}
