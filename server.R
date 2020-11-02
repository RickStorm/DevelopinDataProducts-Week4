library(shiny)
library(plotly)
library(dplyr)
library(tidyverse)



Air<-read.csv("air_passengers_dataset.csv") #Reading data
x<-c(1,2,3,4,5,6,7,8,9,10,11,12) #Creating x axis


server <- function(input, output,session){
  
  
  output$number<-renderPlot({
    z<-(as.integer(input$num_passenger)-2007)*12-11 
    y<-(as.integer(input$num_passenger)-2007)*12
    
    plot(x,Air[z:y,1],type="l",main=paste("Number of Travellers in",input$num_passenger, sep=" "), 
         xlab = "Month Number", ylab=" Number of Passenger")
    
    axis(side=1,1:12,cex.axis=1)
  })  
  
}