
# Lizzy McGary
# 2/19/2021
# lab 5

#lab problem 1

x <- 22
threshold <- 5 # no magic numbers

if( x > threshold ){
  print("x is larger than 5")
} else { 
  "x is equal to or less than 5"
}

# lab problem 2

setwd("C:/Users/lizzy/OneDrive/Documents/classes/EBIO4420/compBioLabsAndHomework/Labs/Lab05")
ExampleData <- read.csv("C:/Users/lizzy/OneDrive/Documents/classes/EBIO4420/compBioSandBox/CompBio_on_git/Labs/Lab05/ExampleData.csv")
head(ExampleData)

# 2a

rows <- nrow(ExampleData) # no magic numbers
vectorData <- ExampleData$x # change data from DF to vector


for (i in 1: rows){
  
  if( vectorData[i] < 0) {
    vectorData[i] <- NA
  }
}

# 2b

vectorData[is.na(vectorData)] <- NaN 

# 2c

vectorData[which(is.nan(vectorData))] <- NA


#2d

vectorData[which(is.na(vectorData))] <- 0 #no NAs, or if statements cant evaluate
count <- 0 #still have row number defined from 2a

for(i in 1: rows){
  if( vectorData[i]<= 100 & vectorData[i]>= 50){
    count <- count + 1
  }
}
count #final count is 498. 498 values between 50 and 100

#2e

FiftyToOneHundred <- rep(NA, count) #pre allocate no dynamic growth

j <- 1 #need a second iterator for the vector position

for (i in 1: rows){
  
  if( vectorData[i]<= 100 & vectorData[i]>= 50) {
    FiftyToOneHundred[j] <- vectorData[i]
    j <- j + 1
  }
  
}
FiftyToOneHundred

# 2f 

write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

# 3a

CO2Data <- read.csv("C:/Users/lizzy/OneDrive/Documents/classes/EBIO4420/compBioSandBox/CompBio_on_git/Labs/Lab04/CO2_data_cut_paste.csv")

yearsAboveZeroEmit <- CO2Data[which(CO2Data$Gas > 0), 1] # find the years above zero, add the years to a vector

yearsAboveZeroEmit[which.min(yearsAboveZeroEmit)] #return the smallest year in the years above zero vector

# 3b

yearsBetween200and300mmt <- CO2Data[which(CO2Data$Total >= 200 & CO2Data$Total <= 300), 1]


# Part 2

totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
time <- rep(1, 1000)
preyPopOverTime <- rep(initPrey, 1000)
predPopOverTime <- rep(initPred, 1000)

for(i in 2: totalGenerations){
  
  initPred <- initPred + (k * a * initPrey * initPred) - (m * initPred)
  initPrey <- initPrey + (r * initPrey) - (a * initPrey * initPred)
  
  preyPopOverTime[i] <- initPrey
  
  predPopOverTime[i] <- initPred
  
  time[i] <- time[i-1] + 1
  
  if(preyPopOverTime[i]< 0){
    preyPopOverTime[i] <- 0
  }

}

plot(time,predPopOverTime, main = "Prey and Predator Population over 1000 generations", xlab = "Generation", ylab = "Population Number", col="blue", pch="*")
lines(time, predPopOverTime, col="blue")
lines(time, preyPopOverTime, col="red")
points(time, preyPopOverTime, col="red", pch="*")


myResults <- cbind(time, preyPopOverTime, predPopOverTime)


write.csv(x = myResults, file = "PredPreyResults.csv")


