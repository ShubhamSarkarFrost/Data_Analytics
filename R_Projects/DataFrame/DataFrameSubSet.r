#1. Creating a DataFrame -----------------------------------------------------
country <- c("France", "Germany", "Greece", "Italy", "Portugal", "Spain") #countries
gdp_growth <- c(1.3, 0.3,1.9, 0.3, NA, 2) #GDP growth Rate
mkt_type <- factor(c("High", "High", "Low", "Medium", "Low", "Medium")) #categories

df <- data.frame(country = country , gdp_growth=gdp_growth, markt_type = mkt_type, stringsAsFactors = F)

#access individual columns using the square brackets 
df[,c(1)]
df[,c('country')]