#Data for reviews
reviews <- c("spoongy burgers","hot and Good","crispier than expected","hard to chew","too large to chew","takes time","filling","unhealthy but delicious")
pages <- sample(1:100)
page_likes <- round(runif(30,1000,8000),0)
m <- list(reviews,pages,page_likes)

#Data View 
reviews 
pages
pages_likes 
m


#Q1 Ans:
page_likes_10th_day <- m[[3]][10]
page_likes_10th_day

#Data Updated 
mylist <- list(sample(letters,75,replace = T),sample(1:26,75,replace = T))

#Data View 
mylist

#Q2 Ans
number_to_J <- mylist[[2]][mylist[[1]]] == 'j'
number_to_J

