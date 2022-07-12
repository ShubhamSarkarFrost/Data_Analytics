install.packages('strptime')

library(anytime)
library(strptime)
library(lubridate)

date_string <- "6-25-2017"

#<-------------------------------------- solution 1------------------------------------------------------------------------------>
date_1 <- lubridate::mdy(date_string)
date_2 <- strptime(date_string,format = "%m-%d-%y")
date_3 <- anytime::anydate(date_string)

date_1
date_2
date_3

#<-----------------------------------solution 2 -------------------------------------------------------------------------------->
future_date <- date_1 + 100
future_date

#<--------------------------------solution 3 ----------------------------------------------------------------------------------->
months(future_date)
year(future_date)


