library(plotGoogleMaps)
library(shiny)

shinyUI(fluidPage(
  pageWithSidebar(
    headerPanel('Map'),
    sidebarPanel(""),
    mainPanel(uiOutput('mymap'))
  )
  
))
