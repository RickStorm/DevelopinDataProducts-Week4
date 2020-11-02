library(shiny)
library(plotly)
library(dplyr)
library(tidyverse)

ui <- fluidPage(
  #For the title of the page
  titlePanel("Air Passenger Travel Number from 2008-2019"),
  
  
  column(5, h4("Select the year to see the number of travellers in that year"),
         selectInput("num_passenger", "Num Passengers", c(2008:2019))),
  
  mainPanel(
    #Our output for the plot
    plotOutput("number") 
  )
)