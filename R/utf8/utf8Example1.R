http://stackoverflow.com/questions/27373882/extracting-dataframe-into-a-utf-8-csv

s = c("aaşğiü", "Đối kháng")
df = data.frame(s) 

con = file("myFile.csv","w", encoding="UTF-8")
write.csv(df, con, row.names=FALSE)
close(con)
