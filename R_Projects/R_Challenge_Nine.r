# Set Operations
#Health Plus Clinic has data for monthly visits of patients who have been administered a special drug 

#Data Preparations of the patient 
m1 <- c(7,4,4,14,8,14,8,1,4,1,13,5,12,13,11,5,15,1,7,4,8,4)
m2 <- c(17,18,7,6,20,9,20,14,5,12,15,20,8,14,14,15,12,7,20,8,8,13,8)
m1
m2
 
#Solution
all_ids <- union(m1,m2)
common_ids <- intersect(m1,m2)

setdiff(all_ids,common_ids)
