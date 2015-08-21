library(shiny)

bmi <- function(height, weight) {if (height>0 && weight>0) round(weight/(height/100)^2, 1)
                                 else "Please check your inputs."}
printPositive <- function(x) {if (x <= 0) "Please enter a positive number."
                              else x}
bmiTable <- data.frame(Category=c("Underweight","Normal weight","Overweight","Obseity"), 
                       BMI=c("18.4 or lesser","18.5-24.9","25-29.9","30 or greater"))

shinyServer(
        function(input, output){
                output$oheight <- renderPrint({printPositive(input$iheight)})
                output$oweight <- renderPrint({printPositive(input$iweight)})
                output$bmi <- renderPrint({bmi(input$iheight, input$iweight)})
                output$table <- renderTable(bmiTable,include.rownames=FALSE)
        }
)