#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(dplyr)
library(shiny)
data("mtcars")
mtcars1<-mtcars
mtcars1$cyl<-as.factor(mtcars1$cyl)

shinyServer(
    function(input, output) {
        output$newplot <- renderPlot({
            mtcars2<-filter(mtcars1,cyl %in% input$cyld)
            plot(x=mtcars2$hp,y=mtcars2$mpg,col=mtcars2$cyl,pch=19, main="Horsepower vs MPG",
                 xlab="Horsepower",ylab="MPG",xlim=c(50,350),ylim=c(10,35))
           
        })
        
    }
)