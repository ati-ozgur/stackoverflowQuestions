library(dplyr)
data(chickwts)

chickwts.summary <- chickwts %>%
  select(feed) %>%
  group_by(feed) %>%
  summarise(count = n())



barplot(chickwts.summary$count)


chickwts.table <- table(chickwts$feed)

barplot(chickwts.table)

chickwts.table.od <- chickwts.table[order(chickwts.table)]

par(oma = c(1, 1, 1, 1))
par(mar = c(4, 5, 2, 1))
barplot(chickwts.table.od)

barplot(chickwts.table.od
        , horiz=TRUE
        , border = NA,  # No borders on bars
        , main="title here"
        , xlab="X Label Here"
)