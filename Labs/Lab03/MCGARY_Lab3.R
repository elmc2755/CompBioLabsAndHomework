
# Lizzy McGary
# Lab 03
# 2/5/2021



# lab step 3 (define the chips bought and guests attending as variables)

initialChips <- 5
numGuests <- 8

# lab step 5  (define the expected chips eaten by each guest as a variable)

avChipPerGuest <- 0.4

# lab step 7 (finding remaining chips)

remainingChips <- initialChips - (( numGuests + 1) * avChipPerGuest)

# lab step 8 (creating vectors of rankings)

Penny <- c(5, 9, 8, 3, 1, 2, 4, 7, 6)
Lenny <- c(6, 5, 4, 9, 8, 7, 3, 2, 1)
Stewie <- c(1, 9, 5, 6, 8, 7, 2, 3, 4)
Self <- c(7, 9, 8, 1, 2, 3, 4, 6, 5)

# lab step 9 (opinions on ep 4)

PennyIV <- Penny[4]
LennyIV <- Lenny[4]

# lab step 10 (create new object from vectors)

allOpinions <- cbind( Self, Penny, Lenny, Stewie)

# lab step 11 (look closer at pennies opinions and the combined vectors)

str(PennyIV)
str(Penny)
str(allOpinions)

# PennyIV is a single numeric value, Penny is a string of numeric values, 
# and allOpinions is a matrix of numbers with headers for the columns

# lab step 12 (make the combined vectors a dataframe two ways)

as.data.frame(allOpinions)
allOpinionsDF <- data.frame(allOpinions)

str(allOpinionsDF)

# the data frame created has official names for both rows and columns, 
# more broadly it is easier to work with a dataframe not a matrix. Data frames 
# can include words as well or strings of letters instead of just numerical values
# creating the data frame also kept the columns as variables, so you can use $ to
# search instead of needing to know the location and using [] like in the matrix


# lab step 14 (create episode name vector)

episodeNames <- c("I", "II", "III", "IV", "v", "VI","VII", "VIII", "IX" )


# lab step 15 (add row names)

row.names(allOpinionsDF) <- episodeNames
row.names(allOpinions) <- episodeNames

# lab step 16 (access third row of matrix from step 10)

allOpinions[3,]

# lab step 17 (access the fourth column from the DF made in step 12)

allOpinionsDF[,4]

# lab step 18 (find personal ep 5 ranking)

allOpinionsDF[5,1]

# lab step 19 (find penny ep 3 rank)

allOpinionsDF[3,2]

# lab step 20 (find everyones ranks for ep 4-6)

allOpinionsDF[4:6,]

# lab step 21 (find all rankings for ep 2, 5, and 7)

allOpinionsDF[c(2,5,7),]

# lab step 22 (find Penny and Stewies rankings for ep 4 and 6)

allOpinionsDF[c(4,6),c(2,4)]

# lab step 23 (swap Lenny's ep 2 and 5 rankings)

LennyEp2 <- allOpinionsDF[2,3]   #save data from [2,3]
allOpinionsDF[2,3] <- allOpinionsDF[5,3]  #move [5,3] data into [2,3]
allOpinionsDF[5,3] <- LennyEp2 #move saved [2,3] data into [5,3]
allOpinionsDF

# lab step 24 (search the data using heading labels not exact column and row numbers)

allOpinionsDF["III","Penny"]
allOpinions["III","Penny"]

# lab step 25 (undo the swap done in step 23 using heading labels)

Lennyep2 <- allOpinionsDF["II","Lenny"]
allOpinionsDF["II","Lenny"] <- allOpinionsDF["v","Lenny"]
allOpinionsDF["v","Lenny"] <- Lennyep2
allOpinionsDF

# lab step 25 (use $ operator re do the swap)

Lennyep2 <- allOpinionsDF$Lenny[2]
allOpinionsDF$Lenny[2] <- allOpinionsDF$Lenny[5]
allOpinionsDF$Lenny[5] <- Lennyep2
allOpinionsDF
