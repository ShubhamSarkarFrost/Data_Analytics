## Find the Mean and Median Age of the 7 Kitchen Employees of Online Pizza Co ##
## Find the value and position of the second Highest Age ###

#Input Code #
age <- c(30,42,23,48,28,NA,40)
anyNA(age)

position_na <- which(is.na(age))
age[position_na] <- 23

mean_age <- mean(age)
median_age <- median(age,na.rm = F)

###Find the Mean and Median Age of the 7 Kitchen Employees of Online Pizza Co ###
mean_age
median_age

## Find the value and position of the second Highest Age ###
order[-age][2]
age[order(-age)][2]


