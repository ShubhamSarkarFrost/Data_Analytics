#04 - Handling Dates with lubridate and anytime 
# Parsing String to Date can be hectic with strftime , lubridate makes it much easier 
# To install the package use the command - install.package(c('lubridate','anytime'))
install.packages(c('lubridate','anytime'))
library(lubridate)
Sys.time()
class(Sys.time())

#Create Different Format of the Date String
d1 <- "2014-11-28"
d2 <- "2-19-11"
d3 <- "04 May 2016"
d4 <- "October 19th 2016"
d5 <- "2016-05-25 04:30:10"

#Convert These Date to PosixCt
d1 <- ymd(d1)
d2 <- mdy(d2)
d3 <- dmy(d3)
d4 <- mdy(d4)
d5 <- ymd_hms(d5)

d1
d2
d3
d4
d5

#AnyDate automatically determines the Date Format
library(anytime)
d4 <- "04 May 2016"
d4 <- anydate(d4)
d4

#Operations possible on Dates Now 
nextday <- d4 + 1
nextday
