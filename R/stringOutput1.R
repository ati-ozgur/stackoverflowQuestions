# http://stackoverflow.com/questions/27347888/outputting-multiple-lines-with-shiny-r

#data
violations1 <- c(1,2,3,5)
violations2 <- c(66,354,78)

#result
paste("Violations of Type 1:",paste(violations1,collapse = ","))
#[1] "Violations of Type 1: 1,2,3,5"
paste("Violations of Type 2:",paste(violations2,collapse = ","))
#[1] "Violations of Type 2: 66,354,78"
