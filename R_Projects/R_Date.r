# 01 - Handling Date with Basic R 
# Convert Date String to Date Object 
mydate <- as.Date('1970-01-31')
mydate
class(mydate)

#Changing the Order does not work 
#Error - character string is not in a standard unambiguous format
#mydate2 <- as.Date('1970-31-01')

#To convert String of any format to date using strptime 
mydate2 <- strptime('1970-31-01', format = '%Y-%d-%m')
mydate2


#To Add TimeZone 
mydate2 <- strptime('1970-31-01', format = "%Y-%d-%m", tz= 'UTC')
mydate2