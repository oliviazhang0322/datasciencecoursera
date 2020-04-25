complete <- function(directory, id=1:332){
  files_list <- list.files(directory, full.names = T)
  nums <- c()
  comdata <- data.frame()
  for (i in id){
    comdata <- read.csv(files_list[i])
    nums <- rbind(nums, sum(complete.cases(comdata)))
  }
  mydata <-data.frame(id, nobs=nums)
  return(mydata)
}