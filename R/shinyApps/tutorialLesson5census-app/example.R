counties <- readRDS("shinyApps/tutorialLesson5census-app/data/counties.rds")
head(counties)


library(maps)
library(mapproj)
source("shinyApps/tutorialLesson5census-app/helpers.R")


percent_map(counties$white, "darkgreen", "% white")


