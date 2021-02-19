
# lab problem 1

for(i in 1:10){
  
  print("hi")
}

# lab problem 2

piggyBank <- 10 
gumCost <- 2 * 1.34 # per week 
allowance <- 5 # per week
weeks <- 8

for (i in 1:weeks){
  
  piggyBank <- piggyBank + allowance - gumCost
  print(piggyBank)
}

# lab problem 3

pop <- 2000
changeRate <- 0.05 # 5% shrink yearly
researchTimeFrame <- 7 #years

for(i in 1:researchTimeFrame){
  pop <- pop - (pop * changeRate)
  print(pop)
}

# lab problem 4

n <- c(1:12) # made vector to hold values
n[1] <- 2500 # starting value
K <- 10000 # carrying capacity
r <- 0.8 # intrinsic growth rate
for (i in 2:12){
  n[i] <- n[i-1] + ( r * n[i-1] * (K - n[i-1])/K)
}
  

# lab problem 5a

mySequence <- rep(0, 18)

# lab problem 5b

for ( i in seq(1,18) ){
  mySequence[i] <- i * 3
}
mySequence
# lab problem 5c

mySequence2 <- rep(0,18)
mySequence2[1] <- 1


# lab problem 5d

for (i in 2:18) {
  mySequence2[i] <- 2 + mySequence2[i-1]
}
mySequence2

# lab problem 6

fibseq <- rep(0, 20) # initalize with 20 zeros
fibseq[2] <- 1 # set the second value to one so that sequence can begin
for ( i in 3:20) { 
  fibseq[i] <- fibseq[i-1] + fibseq[i-2] 
}
fibseq

# lab problem 7

# code from question 4 with added time and abundance vectors. Initially stored values in problem, just renamed some things

abundance <- c(1:12) # renamed this vector
abundance[1] <- 2500 # starting value
time <- rep(0, 12) # created time vector
time[1] <- 1 # start time vector at 1
K <- 10000 # carrying capacity
r <- 0.8 # intrinsic growth rate

for (i in 2:12){
  abundance[i] <- abundance[i-1] + ( r * abundance[i-1] * (K - abundance[i-1])/K)
  time[i] <- i
}

plot(time, abundance, main = "Change in abundance through time", ylab = "abundance", xlab = "time")



