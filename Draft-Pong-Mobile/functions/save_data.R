# Function to save .csv to dropbox

save_data <- function(vToken, vFilename, vData){
  
  debug_output('save_data: Start')
  
  write.csv(vData, vFilename, row.names = FALSE)
  drop_upload(vFilename, dtoken = vToken)
  
  debug_output('save_data: End')
}

