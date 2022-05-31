#Recreate Data
set.seed(100)
clicks_28 <- round(runif(28,3000,4000))
sales_28 <- seq(from=100, to=150, length=28)
visitors_28 <- runif(28,1000,1100)
discount_28 <- rep(c(1,1,1,0.5),7)
mrp <- 5
daily_max_revenue <- sales_28 * mrp
daily_actual_revenue <- daily_max_revenue * discount_28
total_revenue <- sum(daily_actual_revenue)


#Revenue per Clicks 
revenue_per_clicks <- daily_actual_revenue / clicks_28
revenue_per_clicks

#Create an Ad strategy of Sun , Wed & Sat to have a 25% increase 
ad <- c(1.25,1,1,1.25,1,1,1.25)

#Clicks a Day 
clicks_ad <- clicks_28 * ad
clicks_ad

#Revenue a Day after the add
revenue_ad <- revenue_per_clicks * clicks_ad
revenue_ad

#Sum of ad Revenue 
ad_sum_revenue <- sum(revenue_ad)
ad_sum_revenue

#Difference in Revenue 
diff_revenue <- ad_sum_revenue - total_revenue
diff_revenue

