library(plotGoogleMaps)
library(shiny)
shinyServer(function(input, output) {
  if (!file.exists("www"))
  {
    dir.create("www")
  }
  
  output$mymap <- renderUI({
    data(meuse)
    coordinates(meuse) = ~x+y
    proj4string(meuse) <- CRS("+init=epsg:28992")
    m <- plotGoogleMaps(meuse, filename = 'www/myMap1.html', openMap = F)
    tags$iframe(
      src = 'myMap1.html',
      width = "100%",
      height = "600px"
    )
  })
  
})

