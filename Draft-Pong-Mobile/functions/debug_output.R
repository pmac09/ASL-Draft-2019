# Function to print to console for debugging

debug_output <- function(...){
  if(gvShowDebug) {
    cat(..., '\n', sep= '')
  }
}
