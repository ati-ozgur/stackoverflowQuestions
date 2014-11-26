set.seed(12345)
par(mar = rep(0.2, 4))

rowNumber <- 20
columnNumber <- 10

dataMatrix <- matrix(rnorm(columnNumber*rowNumber), nrow = rowNumber)

set.seed(678910)
for (i in 1:rowNumber) {
  # flip a coin
  coinFlip <- rbinom(1, size = 1, prob = 0.5)
  # if coin is heads add a common pattern to that row
  if (coinFlip) {
    dataMatrix[i, ] <- dataMatrix[i, ] + rep(c(0, 3), each = columnNumber/2)
  }
}


par(mar = rep(0.2, 4))
image(1:columnNumber, 1:rowNumber, t(dataMatrix)[, nrow(dataMatrix):1])
heatmap(dataMatrix)

