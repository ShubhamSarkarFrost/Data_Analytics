#1. Creating a DataFrame -----------------------------------------------------
country <- c("France", "Germany", "Greece", "Italy", "Portugal", "Spain") #countries
gdp_growth <- c(1.3, 0.3,1.9, 0.3, NA, 2) #GDP growth Rate
mkt_type <- factor(c("High", "High", "Low", "Medium", "Low", "Medium")) #categories

df <- data.frame(country = country , gdp_growth=gdp_growth, markt_type = mkt_type, stringsAsFactors = F)

#access individual columns using the square brackets 
df[,c(1)]
df[,c('country')]

#Access spcific rows using the first arguement in square brackets 
df[c(1,2,3,4,5), c('country')] #or 
df[-c(6), c('country')]

#Drop a column from a DataFrame 
df$country <- NULL
head(df) 

df$country <- country 
head(df)

#show all except one column in DataFrame 
df[,-1]

#Alternate way to get all columns except one 
df[, !colnames(df) %in% 'country']

########################## MiniChallenge 😎😎😎 ########################
country <- c("France", "Germany", "Greece", "Italy", "Portugal", "Spain")
gdp_growth <- c(1.3, 0.3,1.9,0.3,NA,2) 
mkt_type <- factor(c("High", "High", "Low", "Medium", "Low", "Medium"))
df <- data.frame(country=country,
                 gdp_growth=gdp_growth,
                 market_typ= mkt_type,
                 stringsAsFactors = F)
View(df)

#Delete the last Column mkt_Type 
df$market_typ = NULL
View(df)

#Access even Num of Rows in a DataFrame 
rownums <- seq(2, NROW(df), 2)
df[rownums,]

#Replace NA in GDP column  with the mean of the columns 
df[5, "gdp_growth"] <- mean(df$gdp_growth, na.rm = T)
View(df)














