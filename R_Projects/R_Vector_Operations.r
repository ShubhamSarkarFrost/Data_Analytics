#Operations within a Vector 

#ReCreate Click_28 Vector 
set.seed(100)
click_28 <- round(runif(28,3000,4000))
click_28[c(10,11)] <- NA
click_28[25] <- Inf
click_28

#1. Find Unique Values |||||||||| -> Use Unique Function 
unique(click_28)
length(unique(click_28))

#2. Find Duplicate values ||||||||| -> use Duplicated Function
duplicated(click_28)
click_28[duplicated(click_28)]

#3. Find Average Clicks |||||||| -> Use Mean Function
av_clicks <- mean(click_28)
av_clicks
#O/P -> NA
#Remove NA and then try |||||||||
av_clicks <- mean(click_28,na.rm = T)
av_clicks
#o/p -> Inf 

#Remove INFINITY Value |||||||||| 
clicks_28_noinf <- click_28[!is.infinite(click_28)]
clicks_28_noinf

#Remove NA and compute Mean ||||||||||||
av_clicks <- mean(clicks_28_noinf[!is.na(clicks_28_noinf)])
av_clicks

#Sum of all the clicks 
clicks_28_noninf_nonna <- clicks_28_noinf[!is.na(clicks_28_noinf)]
sum_clicks <- sum(clicks_28_noninf_nonna)
sum_clicks

#Sorting
sort(clicks_28_noninf_nonna) #increasing
sort(clicks_28_noninf_nonna,decreasing = T) #decreasing


#Reversing
rev(sort(clicks_28_noninf_nonna))

#Sorting with Order 
order(clicks_28_noninf_nonna)
clicks_28_noninf_nonna[order(clicks_28_noninf_nonna)] #Increasing Order 
clicks_28_noninf_nonna[order(-clicks_28_noninf_nonna)] #Decreasing Order 

#Finds median or Quantile of clicks
#Median
median(click_28,na.rm = T)
#Quantile
quantile(click_28,probs = .50,na.rm = T)

#To find the quantile of more than one value -Pass it through the vector 
quantile(click_28,c(.25,.75,.50),na.rm = T)


#to summarize all the functions
summary(click_28)






