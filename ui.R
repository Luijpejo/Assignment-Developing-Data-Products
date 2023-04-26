
library(shiny)

shinyUI(fluidPage(

      titlePanel("Calculate your Body Mass Index (BMI)"),

      sidebarLayout(
          sidebarPanel(
            sliderInput("Wght", "What is your weight (in kg)?", 45, 145, value = 65),  
            sliderInput("Hght", "What is your length (in cm)?", 145, 210, value = 175),
              
          ),
    
          mainPanel(
              h4("With these values, the BMI is:"),
              h3(textOutput("bmi")),
              h3(" "),
              h4("This BMI indicates"),
              h3(textOutput("bmi_comment"))
          )

      ),
  
      
  fluidRow(
      column(4, h3("How to calculate your Body Mass Index?")),
      column(6, h4("Body Mass Index calculation"),
           p("The Body Mass Index (BMI) shows the relationship between somebody's weight and somebody's length. 
             The weight (in kilograms) is divided by the square of the length (in meters)."),
           p("The resulting value represents the BMI. A BMI between 18.5 and 24.9 is considered healthy. 
              Below 18.5 is seen as underweighted. A BMI of 25 and above is considered from overweighted (<30), 
              via obese (<40) to morbide obese (>= 40)."),
           h4("Instructions"),
           p("Give in your weight and your length, by using the two sliders."),
           p("The app will return the BMI-value and an indication of whether that value is healthy or not.")
        ) 
  ) 
  
  
) 
) 
