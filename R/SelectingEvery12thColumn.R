# http://stackoverflow.com/questions/27160799/selecting-every-12th-column-of-a-dataframe-in-r

library(stringr)

str <- paste(seq(889,889+430),c("a"),collapse = '')
columnNames <- str_split(str," ")[[1]]

columnNames <- columnNames[3:length(columnNames)-1]

length(columnNames)

