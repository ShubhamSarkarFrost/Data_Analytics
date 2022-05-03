# How to create Random Data , sampling and rounding 

#create the daily visitors data from the website of the seller (28 days of data)
#Create random number without limit 
visitors_28 <- runif(28)
visitors_28

#create a random data , assuming daily visitors to be between 1000 to 1100
visitors_28 <- runif(28 , min=1000, max=1100)
visitors_28

#how to generate pseudo random number 
set.seed(100)
visitors_28 <- runif(28, 1000, 1100)
visitors_28

#another option to generate a real world data that follows normal distribution(ex-height of white carcausean male)
height_rnorm28 <- rnorm(28,mean = 6.00,sd= .3)
height_rnorm28

height_runif28 <- runif(28, min=5,  max=6)
height_runif28


#2-Sampling
#random sample without replacement
visitors_28 <- runif(28 , min=1000, max=1100)
visitors_28

samp_without_replace <- sample(visitors_28,10)
samp_without_replace

#to get the same random numbers sample everytime
visitors_28 <- runif(28 , min=1000, max=1100)
visitors_28
set.seed(100)

samp_1 <- sample(visitors_28,10)
samp_1
samp_1

#random sample with repetation of data , needed to pick a samller data
discount_5 <- rep(c(1,0.5),5)
discount_5

samp_replace <- sample(discount_5, 20, replace = TRUE)
samp_replace

# rounding , round up -> ceil , round down -> floor 
visitors_28 <- runif(28 , min=1000, max=1100)
visitors_28

#round 
round(visitors_28)

#round_up 
ceiling(visitors_28)

#round_down 
floor(visitors_28)

# to truncate a floating number to a next integer close to zero 
trunc(visitors_28)

