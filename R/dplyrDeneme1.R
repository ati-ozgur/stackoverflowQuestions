#http://stackoverflow.com/questions/27236404/how-to-make-dplyr-not-throw-error-when-filter-argument-is-all-false

library(dplyr)

first <- function(value) {
  if(length(value)==0) {
    return(data.frame(out=NA,othercolumns=c(0,1)))
  } else {
    return(data.frame(out=mean(value),othercolumns=c(1,1)))
  }
}
 set.seed(1)
 df <- data.frame(column1=runif(10),column2=runif(10),
                   category=sample(c("a","b"),10,replace=TRUE))

df %>% 
  group_by(category) %>% 
  filter(column2 > 1) %>% 
  do(first(.$column1))

