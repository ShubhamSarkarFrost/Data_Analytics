#formatting numbers ----------------------------------------------------------->
#controling the number of digits printed in the console 
n <- 1.1234567
n2 <- 112.34567

#n  <- round(n,2)
#n2 <- round(n2,3)

#n <- trunc(n)
#n2 <- trunc(n2)

#n
#n2

# print 4 digits irrespective of all the decimal points present 
#before
n
n2

#After setting the digits
options(digits= 4)
n
n2

# how to display the number of greater than 15 digits without scientific notation 
n <- 1200000000000
#print n 
n 
options(scipen=999)
n

