# Create Data for 28 days 

# 1- Regular sequence
date_28 <- 1:28
date_28


#Create repetations 
weekday_7 <- c("mon","tue","wed","thurs","fri","sat","sun")
weekday_28 <- rep(weekday_7,each=4)
weekday_28

#Daytype 28 
daytype_7 <- c("WN","WD","WD","WD","WD","WD","WN")
daytype_28 <- rep(daytype_7,4)
daytype_28
daytype_28 <- factor(daytype_28)
class(daytype_28)

#discount_28 - pizza company is giving a discount of 50 % in every four days for 28 days 
discount_28 <- rep(c(1,1,1,0.5),7)
discount_28
length(discount_28)

#creating sequence 
sales_28 <-  seq(from=100,  by=2, length=28)
sales_28
length(sales_28)

