#Lab 7 
#Lizzy McGary

# 1

triangleArea <- function(base, height){
  area <- 0.5 * base * height
  return(area)
}

myTri <- triangleArea(10, 9) #value 45, success

# 2

myAbs <- function(value){
  if(value >= 0){
    absolute <- value
  }
  else{
    absolute <- value * -1
  }
  return(absolute)
}

testcase <- myAbs(-2.3)
testcase2 <- myAbs(5)

# 3 

fibonacci <- function(startValue, numValues){
  if(startValue != 0 && startValue != 1){
    print("Error message: starting value must be 1 or 0") #edge case for user entering bad start value
  }
  else if(numValues == 1) #edgecases for n=1 or n=2
  {
    fibseq <- startValue
  }
  else if(numValues == 2)
  {
    fibseq <- c(startValue, 1)
  }
  else #all other cases
  {
  fibseq <- rep(0,numValues)
  fibseq[1] <- startValue
  fibseq[2] <- 1 
  
  for ( i in 3:numValues) { 
    fibseq[i] <- fibseq[i-1] + fibseq[i-2] }


  }

  return(fibseq)
}

testcase3 <- fibonacci(0, 2) 
testcase4 <- fibonacci(4, 12)

#4a

sqrDiff <- function(x, y){
  (x - y) ^ 2
}

testcase5 <- sqrDiff(3, 5)
testcase5

vect <- c(2, 4, 6) # vector test case to show R can vectorize operations
sqrDiff(vect, 4)

#4b 

averageFunc <- function(dataIn){
  if(is.vector(dataIn)==TRUE){  #problem asks for vector argument, I put in a case for data frames 
    sum(dataIn) / length(dataIn)
  }
  else if(is.data.frame(dataIn)==TRUE)
  {
    sum(dataIn) / nrow(dataIn)
  }
  else
  {
    print("Please enter dataframe or vector")
  }
 
}

myVect <- c(5, 10, 15) #test case
averageFunc(myVect)


lab7Data <- read.csv("DataForLab07.csv") #test case for DF
averageFunc(lab7Data)

#4c

myDataVect <- lab7Data$x #I changed the data into a vector for this one instead of writing function that takes a vector and a DF

sumSqrs <- function(dataInput){
  av <- averageFunc(dataInput)
  vectSqrs <- rep(0, length(dataInput))
  for(i in 1:length(dataInput)){
    vectSqrs[i] <- (dataInput[i] - av) ^ 2
  }
  sum(vectSqrs)
}

sumSqrs(myDataVect)

