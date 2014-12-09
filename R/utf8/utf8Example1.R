s = c("aaşğiü", "ŞÇÖĞÜbb") 
df = data.frame(s) 

con = file("myFile.csv","w", encoding="utf8")
write.csv(df, con, row.names=FALSE)
close(con)
