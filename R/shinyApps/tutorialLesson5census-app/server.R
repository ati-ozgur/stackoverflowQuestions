shinyServer(function(input, output) {
  output$text1 <- renderText({ 
    paste("You have selected", input$var)
  })
  output$textOutputSlider <- renderText({ 
    paste("You have selected min ", input$range[1], "max ",input$range[2])
  })
  
})