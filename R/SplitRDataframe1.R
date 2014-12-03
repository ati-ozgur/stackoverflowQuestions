library(dplyr)

data <- read.table(text ="group;  year1; year2; value
    a;  1927;   1934;   -140
    a;  1953;   1955;   -480
    b;  1957;   1958;   -280
    b;  1961;   1965;   -1420 ", sep=";", header=T,stringsAsFactors = FALSE)


data_temp <- cbind( seq(min(data$year1),  max(data$year2)), lead(seq(min(data$year1),  max(data$year2))))
  
  
   



data %>%
  mutate(diff_year = year2 - year1,value_year = value / diff_year)