library(shiny)
slider <- sliderInput(inputId = "test", 
                      label = "choose a num",
                      value = 25, min = 1, max = 100)
ui <- fluidPage(slider, 
                mainPanel(plotOutput("plot"))
                )

server<- function(input, output){
  output$plot <- renderPlot({plot(data$V1)
  })
}

shinyApp(ui = ui, server = server)