# Lists 

#1.Create Lists ----------------------------------------------------->
#Pre Created Vectors 

#Create Rough Data 
reviews <- c("spoongy burgers","hot and Good","crispier than expected","hard to chew","too large to chew","takes time","filling","unhealthy but delicious")
pages <- sample(1:100)
page_likes <- round(runif(30,1000,8000),0)


#View 
reviews
pages
page_likes


#Create List
m <- list(reviews,pages,page_likes)
m
class(m)

#To access 'Hard to Chew' from the list 
example_data <- m[[1]][4]
example_data

#Named List
m1 <- list(reviews=reviews,pages=pages,page_likes=page_likes)
m1
class(m1)


#to access an element from named list
named_example_data <- m1$reviews[4]
named_example_data

#In Order to Know what things are stored inside a list use the unlist operator changes list into a vector 
m2 <- unlist(m1)
m2

#Get the 4th element 
m2[4]

#List Inside a List
countries <- c("China","UK","USA","France","Greece","Spain","Italy")
n <- list(countries,m)
n

#Go to the Correct Item
extract_data <- n[[2]][[1]][4]
extract_data


