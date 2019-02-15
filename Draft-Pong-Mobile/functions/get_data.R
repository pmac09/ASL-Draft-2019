# Function to get .csv from dropbox

get_data <- function(vToken, vFilename){
  
  debug_output('get_data: Start')
  
  tData <- drop_read_csv(vFilename, dtoken= vToken)
  
  debug_output('get_data: End')
  return(tData)
}

