pollutantmean <- function(directory, pollutant, id=1:332){
 files_list <- list.files(directory, full.names = T)
 dat <- data.frame()
   for (i in id){
     dat <- rbind(dat, read.csv(files_list[i]))
   }
 mean(dat[[pollutant]], na.rm = T)
}
#reference:(https://github.com/derekfranks/practice_assignment
#/blob/master/Practice_Assignment.pdf)
