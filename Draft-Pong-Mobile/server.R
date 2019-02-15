###############################
##    App: Draft-Pong-Mobile ##
## Author: Paul McGrath      ##
###############################

# SERVER ----
shinyServer(function(input, output) {
   
  output$tblStats <- renderDataTable({
    data <- get_data(gvToken, gvFilename)
    return(data)
  })
  
})
