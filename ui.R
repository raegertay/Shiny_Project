library(shiny)
shinyUI(fluidPage(
        titlePanel("BMI Calculator"),
        
        tabsetPanel(
                tabPanel("Documentation", 
                         mainPanel(
                                 h3("Introduction"),
                                 p("The body mass index (BMI), or Quetelet index, 
                                is a value derived from the mass (weight) and height of an individual. 
                                 The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) 
                                in an individual, and then categorize that person as underweight, normal weight, overweight, 
                                or obese based on that value."
                                 ),
                                 h3("Instructions"),
                                 p("1. Select the 'BMI Calculator' tab."),
                                 p("2. Enter your height(cm) and weight(kg)."),
                                 p("3. Press 'Calculate'"),
                                 p("4. Compare your BMI against the table in the sidebar."),
                                 em("App created for Coursera's Developing Data Products course, Aug 2015.")
                         )
                ),
                
                tabPanel("BMI Calculator", 
                         sidebarPanel(
                                 numericInput('iheight', 'Height in cm', 150, min = 1, max = 999, step = 1),
                                 numericInput('iweight', 'Weight in kg', 50, min = 1, max = 999, step = 1),
                                 submitButton('Calculate'),
                                 br(),
                                 tableOutput('table')
                         ),
                         mainPanel(
                                 h3("Your Inputs"),
                                 h4("Height:"),
                                 verbatimTextOutput("oheight"),
                                 h4("Weight:"),
                                 verbatimTextOutput("oweight"),
                                 h3("Your BMI"),
                                 verbatimTextOutput("bmi")
                         )
                )
        )
)
)
