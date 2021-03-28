#Lab 8
#Lizzy McGary

#3



growthFunc <- function(r, k, generations, initialPop ){
 time <- rep(0, generations)
 abundance <- rep(0, generations)
 abundance[1] <- initialPop
 time[1] <- 1
   for (i in 2:generations){
    abundance[i] <- abundance[i-1] + ( r * abundance[i-1] * (k - abundance[i-1])/k)
    time[i] <- i
  }
  
  plot(time, abundance, main = "Change in abundance through time", ylab = "abundance", xlab = "time")
  growthDataDf <- data.frame(time, abundance)
  write.csv(growthDataDf, "growthData.csv")
}


growthFunc(0.8, 10000, 12, 2500)


