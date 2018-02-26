#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ANLP)

ng1 <- readRDS("ngram_smple_1.RDS")  
ng2 <- readRDS("ngram_smple_2.RDS")  
ng3 <- readRDS("ngram_smple_3.RDS")  
ng4 <- readRDS("ngram_smple_4.RDS")  

gmodel <- list(ng4,ng3,ng2,ng1)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   

  output$outtext <- renderText({
    
    if ( input$inptext != "")   {
    result <- predict_Backoff(tolower(input$inptext),gmodel)
                              
    paste("NextWord Predicted Is", result)
    
    }
  })
  
})
