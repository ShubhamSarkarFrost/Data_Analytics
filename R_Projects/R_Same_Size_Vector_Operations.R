#Opearations on vector & Vector (same size with size=1)

#Recreate the Data 
set.seed(100)
clicks_28 <- round(runif(28,3000,4000))
sales_28 <- seq(from=100,to=150,length=28)
visitors_28 <- runif(28,1000,1100)
discount_28 <- rep(c(1,1,1,0.5),7)


#Find Daily Clicks Per Visitors 
daily_cpv <- clicks_28 / visitors_28
daily_cpv

#Find Maximum revenue the pizza company would have got 
mrp <- 5
daily_max_revenue <- sales_28 * mrp
daily_max_revenue

#Find Total Actual Revenue 
daily_actual_revenue <- daily_max_revenue * discount_28
daily_actual_revenue

#Find Total Revenue 
total_revenue <- sum(daily_actual_revenue)
total_revenue




