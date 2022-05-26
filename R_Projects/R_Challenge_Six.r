#Input Code 
set.seed(100)
temp_annual <- runif(365,68,77)

#<-------------------------------- Set Bins For the Data ------------------------------------------------------------------------------->
bin <- c(68,70,74,77)
level <- c("68-70F","71-74F","75-77F")
temp_dist <- cut(temp_annual,bin,level)
temp_dist