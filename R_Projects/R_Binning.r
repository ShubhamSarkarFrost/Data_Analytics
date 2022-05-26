#Binning is a Process of Converting a Continuous Variable into Catagorical Variable 
# Like Age 1-5 - Infant 5 - 14 - Child 14 - 19 - Teenager 19 - 60 - Working Age , 60 - 80 - Retirement 


#<--------------------------------------Creation of Data ------------------------------------------------------------------------------------>
#Click_28 Vector Creation 
set.seed(100)
click_28 <- round(runif(28,3000,4000))
click_28[c(10,21)] <- NA
click_28[25]       <- Inf
click_28



# Find the Number of Days where count is 0-3200 , 3000-3600, 3600-4000
click_28
bins <- c(0,3200,3600,4000)
days_clicks <- cut(click_28,bins) # Cut is the Function which does Binning Process to us 
days_clicks

#Output will be in the Form 
#[1] (3.2e+03,3.6e+03] (3.2e+03,3.6e+03] (3.2e+03,3.6e+03] (0,3.2e+03]       (3.2e+03,3.6e+03] (3.2e+03,3.6e+03] (3.6e+03,4e+03]  
#[8] (3.2e+03,3.6e+03] (3.2e+03,3.6e+03] <NA>              (3.6e+03,4e+03]   (3.6e+03,4e+03]   (3.2e+03,3.6e+03] (3.2e+03,3.6e+03]
#[15] (3.6e+03,4e+03]   (3.6e+03,4e+03]   (3.2e+03,3.6e+03] (3.2e+03,3.6e+03] (3.2e+03,3.6e+03] (3.6e+03,4e+03]   <NA>             
#[22] (3.6e+03,4e+03]   (3.2e+03,3.6e+03] (3.6e+03,4e+03]   <NA>              (0,3.2e+03]       (3.6e+03,4e+03]   (3.6e+03,4e+03]  
#Levels: (0,3.2e+03] (3.2e+03,3.6e+03] (3.6e+03,4e+03]

#To Make the representation easier to Understand use level vector 
click_28
level <- c("Low","Medium","High")
days_click <- cut(click_28,bins,level)
days_click

#Output
#[1] Medium Medium Medium Low    Medium Medium High   Medium Medium <NA>   High   High   Medium Medium High   High   Medium Medium Medium High  
#[21] <NA>   High   Medium High   <NA>   Low    High   High  
#Levels: Low Medium High

#to know about any function use the help function
#?cut or help(cut)

click_1000 <- round(runif(1000,3000,4000))
length(click_1000)
#To make Data of huge quantity represent much easily use pretty function -> it equally divides the bucket 
pretty(click_1000,5)
boundaries <- pretty(click_1000,5)
level <- c("Low","Medium","High","Higher","Highest")
days_click_1000 <- cut(click_1000,boundaries,level)
days_click_1000





