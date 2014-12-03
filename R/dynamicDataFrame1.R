master<-c("bob","ed","frank")
d<-seq(1:10)
for (i in 1:length(master)){
  assign(master[i], d )
}
