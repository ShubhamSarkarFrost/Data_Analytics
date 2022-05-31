#Input Code 
mrp <- 10
item_id <- c(1:100)

sales_price <- ifelse(item_id >= 40, {ifelse(item_id %% 10 ==0 , mrp * 0.8, mrp)},{mrp *0.8})
sales_price

#Sum of the price 
sum(sales_price)


