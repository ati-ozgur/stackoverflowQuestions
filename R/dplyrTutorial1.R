# https://stat545-ubc.github.io/block009_dplyr-intro.html

suppressPackageStartupMessages(library(dplyr))
if (!exists("gdf"))
{
  gd_url <- "http://tiny.cc/gapminder"
  gdf <- read.delim(file = gd_url)
  
}

str(gdf)  
head(gdf)

gtbl <- tbl_df(gdf)
gtbl

glimpse(gtbl)

filter(gtbl, lifeExp < 29)


filter(gtbl, country == "Rwanda")


filter(gtbl, country %in% c("Rwanda", "Afghanistan"))


gtbl %>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)