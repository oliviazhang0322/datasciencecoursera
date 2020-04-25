corr <- function(directory, threshold=0){
  files_list <- list.files(directory, full.names = T)
  corvector<-c()
  for (i in files_list){
    cordata <- read.csv(i, header = T)
    cordata <- na.omit(cordata)
    if (nrow(cordata) > threshold){
    corvector <- c(corvector, cor(cordata$sulfate, cordata$nitrate))
    }
  }
  return(corvector)
} 