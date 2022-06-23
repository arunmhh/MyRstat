basicstatistic <- function(temp){
  titles <- c("mean","median","Variance","sd","min","max")
  newdataframe <- data.frame(1:6, row.names = titles)
  names(newdataframe)[1] <- "Basic Statistics"
  newdataframe[1] <- c(mean(temp),median(temp),var(temp),sd(temp),min(temp),
                       max(temp))
  newdataframe
}

data <- PlantGrowth
basicstatistic(PlantGrowth$weight)
