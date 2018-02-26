#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Data Capstone Project"),
  

  helpText("Instructions To use this App:",style="color:red"),
  helpText("1. Enter Text in Below Input text box",style="color:red"),
  helpText("2. Click on Predict NextWord Button",style="color:red"),
  helpText("3. Nextword predicted will be displayed as output ",style="color:red"),
  
  
  fluidRow(
    column(3, wellPanel(
      textInput("inptext", "Enter Input Text", ""),
      submitButton("Predict NextWord")
    )),
    column(6,verbatimTextOutput("outtext")
    )
  )
  
))
