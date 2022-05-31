#IF Else Condition

#We Have a Data of 100 drug samples manufactured and stored in one vector item_id , from 1to 39 is batch 1 and remaining is batch 2
item_id <- c(1:100)

#1. If Else Conditionals
#Create an RCode to mark them as 'Batch1' and 'Batch2'
#Create a Logic for One Element 
if(2 < 40){
  print("Batch 1")
}else{
  print("Batch 2")
}

# 2 - Simplified If Else Logic 
mfg_label <- ifelse(item_id < 40, "Batch 1", "Batch 2")
mfg_label


#Provide a Discount of 80% on Batch 1 medicine
mrp <- 10 

sales_price <- ifelse(item_id < 40, mrp * 0.8, mrp)
sales_price

#Multiple Inner Assignments 
ifelse(sum(sales_price)<900, output1 <- "Bad Sales" , output2 <- "Good Sales")


#to check which one of the following varaiable exists , use exist function
if(exists("output1")){
  paste0("This Month HealthFirst Medical has ",output1)
}else{
  paste0("This Month HelathFirst Medical has ", output2)
}  

#Nested If Else
#Pharma Company discovered a Data Error that every item that ends with 0 , actually belong to a new bacth 
#find the new sales price
sales_price <- ifelse(item_id<40, {ifelse(item_id %% 10 !=0, mrp * 0.8 , mrp)},mrp)
sales_price

