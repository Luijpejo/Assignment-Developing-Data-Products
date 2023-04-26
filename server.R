library(shiny)
library(dplyr)


shinyServer(function(input, output) {
  
  bmi <- reactive({
     
      round(input$Wght / (input$Hght/100)^2, 2)
  }) #reactive bmi
  
  
  output$bmi <- renderText({
    bmi()
  }) #renderText bmi
  
  output$bmi_comment <- renderText({
    case_when(
      bmi() < 18.5 ~ "underweightedness",
      bmi() < 25 ~ "a healthy weight",
      bmi() < 30 ~ "overweightedness",
      bmi() < 40 ~ "obesity",
      TRUE ~ "morbid obesity"
    ) # case
        }) #RenderText bmi_comment
 
}) #shinyServer