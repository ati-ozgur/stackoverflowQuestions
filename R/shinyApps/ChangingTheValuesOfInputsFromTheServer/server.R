library(shiny)
shinyServer(function(input, output, clientData, session) {
  
  observe({
    # We'll use these multiple times, so use short var names for
    # convenience.
    c_label <- input$control_label
    c_num <- input$control_num
    
    # Text =====================================================
    # Change both the label and the text
    updateTextInput(session, "inText",
                    label = paste("New", c_label),
                    value = paste("New text", c_num)
    )

    

  })
})