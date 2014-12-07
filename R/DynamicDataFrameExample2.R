

master<-c("bob","ed","frank")
d<-seq(1:10)
for (i in 1:length(master)){
  assign(master[i], d )
}

ed[6]

get(master[2])[5]
get(master[2])[2]

temp <- get(master[2])

# assign value 20 to index 5
assign("ed",20)

assign("ed[6]",20) # it creates a variable named "ed[6]", not what you want

ls(pattern = "^ed.*$")

temp[6] = 20

assign("ed",temp)
rm(temp) # remove temp if you do not need it

get("ed")[6]


