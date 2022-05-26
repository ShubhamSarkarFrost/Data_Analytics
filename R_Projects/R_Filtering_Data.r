# How to Create Subset 

#Find Length of the Visitors 
set.seed(100)
visitors_28 <- runif(28,1000,1100)
visitors_updated <-ceiling(visitors_28)
length(visitors_28)
visitors_updated

#recreatre sales_28 Data 
sales_28 <- seq(from=1000, by=2 , length=28)
sales_28
length(sales_28)

#Create Subset of Vectors 
dist_index <- c(4,8,12,16,20,24,28)
visitors_discount <- visitors_updated[dist_index]
visitors_discount
length(visitors_28)


#Create Subset Bases on Logical approach which() - gets the value where conditorn is true 
pos_1 <- which(sales_28 > 140)
pos_1


sales_28[pos_1]
visitors_updated[pos_1]

#Which Function with Multiple Arguements
pos_2 <- which(sales_28 > 120 & sales_28 %% 4==0)
sales_28[pos_2]
visitors_updated[pos_2]

#Find Positon of the sales where sales data is divisible by 6 as well as 4 
pos_3 <- which(sales_28 %% 4==0 | sales_28 %% 6==0)
sales_28[pos_3]
visitors_updated[pos_3]

#Masking - The Process of getting Boolean Value of the Elements (True | False)
mask <- (sales_28 %% 6==0 | sales_28 %% 4 ==0)
mask
sales_28[mask]


