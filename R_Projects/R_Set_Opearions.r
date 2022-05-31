# Set Operations
#Health Plus Clinic has data for monthly visits of patients who have been administered a special drug 

#Data Preparations of the patient 
m1 <- c(7,4,4,14,8,14,8,1,4,1,13,5,12,13,11,5,15,1,7,4,8,4)
m2 <- c(17,18,7,6,20,9,20,14,5,12,15,20,8,14,14,15,12,7,20,8,8,13,8)
m1
m2

#Find the patients who were there in Month One were also there in month 2 
out <- m1 %in% m2
out
m1[out]

#to find unique element -> use unique keyword 
unique(m1)
length(unique(m1))

#To Find a Data of unique patients who were there in Month One and Two
union(m1,m2) #Union of X & Y

#To Find Unique Patient ID's who were there in both the month 
intersect(m1,m2) #Intersect of X & Y

#To find the patient with ID's who were there in Month 1 but not in Month 2
setdiff(m1,m2)



