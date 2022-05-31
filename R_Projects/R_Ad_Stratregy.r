#Impact of Ad Campaign on Revenue
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

#Plan ads every tuesday and Friday to increase revenue by 40 %
# find Revenue per clicks
revenue_per_clicks <- daily_actual_revenue / clicks_28
revenue_per_clicks

#Create an AD vector and jack up the percentage in tuesday and friday 
Ad <- c(1,1,1.4,1,1,1.4,1)

#Clicks on day to day basis after running ad campaign 
clicks_ad <- clicks_28 * Ad
clicks_ad

#Calculate new Value of the revenue 
revenue_ad <- revenue_per_clicks * clicks_ad
revenue_ad

#Total Revenue after ad campaign 
total_revenue_ad <- sum(revenue_ad)
total_revenue_ad

#Calculate Difference in Revenue with and Without ad
diff_ad_revenue <- total_revenue_ad - total_revenue
diff_ad_revenue