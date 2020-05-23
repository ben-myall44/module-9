#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("mpg vs horsepower"),
    sidebarPanel(
        checkboxGroupInput("cyld", "no of cylinder",
                           c("4 cylinders" = "4",
                             "6 cylinders" = "6",
                             "8 cylinders" = "8")),
        submitButton("Submit")
    ),
    mainPanel(
        plotOutput("newplot")
    )
))