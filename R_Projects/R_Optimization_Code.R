#Optimize For Loop with preallocation



#Create Item of hypothetical Data 
# Method 1 - Increase Size of the Vector with No Limits 
system.time({
  item_id_hypo <- numeric()
  for(i in 1:100000){
    item_id_hypo <- c(item_id_hypo,i)
  }
  item_id_hypo
})

#Method 2 - Directly assign at the respective positions
system.time({
  item_id <-numeric()
  for(i in 1:100000){
    item_id[i] <- i
  }
  item_id
})

#Method 3 - Preallocate memory First and then create the loop 
system.time({
  item_id <- numeric(100000)
  for(i in 1:100000){
    item_id[i] <- i
  }
  item_id
})
