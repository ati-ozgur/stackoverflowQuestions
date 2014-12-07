# http://stackoverflow.com/questions/21818181/applying-a-function-to-every-row-of-a-table-using-dplyr
data(iris)
library(dplyr)
iris %>% 
  rowwise() %>% 
  mutate(Max.Len= max(Sepal.Length,Petal.Length))
