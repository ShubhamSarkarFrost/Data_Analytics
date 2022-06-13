#Increase the size of previous vector and compute for the optimized code 

#Method 1 - creating a vector and then appending 
system.time({
  item_id_hypo <- numeric()
  for(i in 1:10000000){
    item_id_hypo <- c(item_id_hypo,i)
  }
  item_id_hypo
})


#Method 2 - Directly assign at the respective positions
system.time({
  item_id_hypo <- numeric()
  for(i in 1:10000000){
    item_id_hypo[i] <- i
  }
  item_id_hypo
})

#Method 3 - Preallocate memory First and then create the loop 
system.time({
  item_id_hypo <- numeric(10000000)
  for(i in 1:10000000){
    item_id_hypo[i] <- i
  }
  item_id_hypo
})