library(shiny)
shinyUI(fluidPage(
  titlePanel("Changing the values of inputs from the server"),
  fluidRow(
    column(3, wellPanel(
      h4("These inputs control the other inputs on the page"),
      textInput("control_label",
                "This controls some of the labels:",
                "LABEL TEXT")
    ))
    
    )
  )
)
