# Function for the computation of W(Y) values
wy <- function(y,mu0){
  n <- length(y)
  -2 * n * ((mean(y) * (1 + (log(mu0) - log(mean(y))) - mu0)))
}
# Simulation function
simulwy <- function(simsize, n, mu0,mu){
  res<- rep(0,simsize)
  for (i in 1:simsize)
    res[i] <- wy(rpois(n,mu0),mu)
  res
}
rep = 10000 # simulation size
significance = 0.05

ressorted  = sort(reswy)

lambda_critical = ressorted[rep * significance]

res2wy = simulwy(10000,7,2,3)

power_val = mean(res2wy > lambda_critical)

