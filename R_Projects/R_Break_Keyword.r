#Stop at the first occurance of the Keyword using Break() statement 

#Data 

#Create Data 

pill_id <- c(1:100)
sales_price <- c(rep(8,39),rep(10,61))
pill_id
sales_price

#10 % of the drugs are placebo 
pill_type <- sample(c("placebo","real"),length(pill_id), replace = T,prob= c(.1,.9))
pill_type


#Run a For Loop 
for(i in pill_id){
  if(pill_type[i] == 'placebo')
  print(i)  
  break
}

#While Loop 
#Initialize counter and condition check variable 
iteration <- 1
total_sales <- sum(sample(sales_price, 10))

#start while loop 
while(total_sales < 100){
  print(paste('iteration',iteration))
  total_sales <- sum(sample(sales_price, 10))
  if(total_sales >= 100){
    print(total_sales)
    break
  }
  iteration = iteration + 1
}

#Repeat Loop -Just Like Do - While Loop , repeats somethings untill the condition is met 
# Note Repeat() loop requires a Break() statement 

iteration <- 1
repeat{ total_sales  <- sum(sample(sales_price,10))
      if(total_sales >= 100){
        print(total_sales)
        break
      }
iteration <- iteration + 1
  
}
