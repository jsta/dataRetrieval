#' Import Preloaded Sample Data for WRTDS use
#'
#' This function is intended to convert sample data that is already loaded into the R enviornment to the WRTDS daily data frame.
#'
#' @param loadedData dataframe that is already loaded in R session
#' @param interactive logical Option for interactive mode.  If true, there is user interaction for error handling and data checks.
#' @keywords data import  WRTDS
#' @export
#' @return Sample dataframe 
#' @examples
#' Sample <- getPreLoadedSampleData(ChoptankRiverNitrate, interactive=FALSE)
getPreLoadedSampleData <- function (loadedData,interactive=TRUE){

  compressedData <- compressData(loadedData,interactive=interactive)
  Sample <- populateSampleColumns(compressedData)
  return(Sample)
}