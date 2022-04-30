# to Create a Group of data in a Vector ----------------------------------------

#Create the data of the Entire week's sales activity ---------------------------
date_7 <- c(1,2,3,4,5,6,7)
date_7

#Shorter way to create the same
date_7 <- 1:7
date_7
class(date_7)


#weekday
weekday_7 <- c("sun","mon","tue","wed","thurs","fri","sat")
weekday_7
class(weekday_7)


#sales
sales_7 <- c(100.0,102.3,109.8,101.5,115.3,116.2,117.6)
sales_7
class(sales_7)

#create a discount 1- 100 % , 0.5 - 50 %
discount_7 <- c(1,0.5,1,0.5,0.5,1,1)
discount_7
class(discount_7)

#assign weekday 7 as the names of the item in item 7 
names(date_7) <- weekday_7 
date_7
date_7["mon"]
#date_7["mon","tue"] # wrong
date_7[c("mon","tue")]

#2- create a daytype vector for one week wn = "Weekend" wy ="Weekday"
daytype_7 <- c("WE","WD","WD","WD","WD","WD","WE")
daytype_7
class(daytype_7)

# If there a duplicate value of the data convert it to factor 
daytype_7 <- factor(daytype_7)
daytype_7
class(daytype_7)

# how to access a particular element 1 - using the key  2 - using the index
weekday_7[1]
weekday_7[c(1,3)]
weekday_7[1:3]



