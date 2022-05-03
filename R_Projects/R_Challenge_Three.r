#create the wage of an employee for 12 months , increasing $1000 every month starting from $10 per month 
wage_12 <- seq(from=1000, by=10, length=12)
wage_12

#create a sequence - 1000 , 1000 , 1000 , 1200 , 1200, 1200, 1400, 1400,1400, 1600,1600,1600
seq_new <- rep(seq(from=1000, by =200, length=4 ),each=3)
seq_new