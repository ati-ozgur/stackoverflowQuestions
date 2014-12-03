# http://www.rdocumentation.org/packages/dplyr/functions/rowwise
df <- expand.grid(x = 1:3, y = 3:1)
df %>% rowwise() %>% do(i = seq(.$x, .$y))
.Last.value %>% summarise(n = length(i))

