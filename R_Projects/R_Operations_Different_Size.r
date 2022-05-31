#Opeations of Vector on Vector (with different size)

#DATA
set.seed(100)
clicks_28 <- round(runif(28,3000,4000))
sales_28 <- seq(from=100, to=150, length= 28)
visitors_28 <- runif(28,1000,1500)
discount_28 <- rep(c(1,1,1,0.5),7)
mrp <- 5
daily_max_revenue <- sales_28 * mrp
daily_actual_revenue <- daily_max_revenue * discount_28
total_revenue <- sum(daily_actual_revenue)

#create shift data for 4 day sequence 
shifts <- c(1,1,1,2)

#Updated Revenue due to change in Shifts 
possible_revenue <- daily_actual_revenue * shifts
possible_revenue

total_revenue_shifts <-  sum(possible_revenue)

rev_shift_increase <- total_revenue_shifts - total_revenue
rev_shift_increase

