#Create Data 

pill_id <- c(1:100)
sales_price <- c(rep(8,39),rep(10,61))
pill_id
sales_price

#10 % of the drugs are placebo 
pill_type <- sample(c("placebo","real"),length(pill_id), replace = T,prob= c(.1,.9))
pill_type

