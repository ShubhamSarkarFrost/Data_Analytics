#Create Data 

pill_id <- c(1:100)
sales_price <- c(rep(8,39),rep(10,61))
pill_id
sales_price

#10 % of the drugs are placebo 
pill_type <- sample(c("placebo","real"),length(pill_id), replace = T,prob= c(.1,.9))
pill_type

#collect the pill ids for all the placebos
placebo_ids <- c()

#Check the Placebos and add()
for(i in 1:39){
  if(pill_type[i] == 'placebo'){
    placebo_ids <- c(placebo_ids,pill_id[i])
  }
}

placebo_ids

#skip all except placebos 
placebo_ids <- c()

#Perform the same iteration with Next() operation 
for(i in 1:39){
  if(pill_type[i] != 'placebo'){
    next()
  }
  placebo_ids <- c(placebo_ids,pill_id[i])  
}

placebo_ids

  