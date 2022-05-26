#How to Find and Replace missing Data 

#Pre-Create a 'Click' Vector with missing Data
set.seed(100)
click_28 <- round(runif(28,3000,4000))
click_28 
click_28[10] <- NA
click_28[21] <- NA
click_28[17] <- NA
click_28 

#INF is used to Represent Infinite Data
click_28[25] <- Inf
click_28


#to Check Missing Data use anyNa function 
anyNA(click_28)

#another Way of Finding NA Data 
NA %in% click_28

#To find Position of an Element 
click_28 == 3308 # This will return the position of the element
click_28 == NA # This is an Incorrect Way of Checking Missing Element

#Correct way of finding missing elements 
is.na(click_28)
na_mask <- is.na(click_28)
not_na_mask <- !is.na(click_28)

#to check for infinite values
is.infinite(click_28)

#4 - How to Remove missing Values 
#Method - 1
click_28[not_na_mask] #Subset to remove missing value 


#Method - 2
na.omit(click_28)

#Replace Missing Values 
#click_28

#na_position <- which(is.na(click_28))
#click_28[na_position] <- 3500

#click_28

# if you want to replace each position with different values 
click_28 

na_position <- which(is.na(click_28))
click_28[na_position] <- c(3500,3700)

click_28
