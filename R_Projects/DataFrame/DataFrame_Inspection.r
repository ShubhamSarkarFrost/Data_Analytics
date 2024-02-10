#1. Creating a DataFrame -----------------------------------------------------
country <- c("France", "Germany", "Greece", "Italy", "Portugal", "Spain") #countries
gdp_growth <- c(1.3, 0.3,1.9, 0.3, NA, 2) #GDP growth Rate
mkt_type <- factor(c("High", "High", "Low", "Medium", "Low", "Medium")) #categories

df <- data.frame(country = country , gdp_growth=gdp_growth, markt_type = mkt_type, stringsAsFactors = F)

#Row append the dataFrame causing duplication 
df <- rbind(df,df,df,df)
class(df)

#To inspect Top 6 rows in a dataframe 
head(df)  #By default it displays 6 rows 
head(df,10)

#to inspect Last 6 rows in a dataframe 
tail(df)
tail(df,10)

#to check dimension of a dataframe 
dim(df)

#eExplictly if you have to check no of rows and column 
nrow(df)
ncol(df)


#To change and assign a ne row name and column name 
rownames(df) 
rownames(df) <- paste0('row_', rownames(df))
rownames(df)

colnames(df)
colnames(df) <- c("Country", "GDP Growth", "Market Type")
colnames(df)

#now to access the new space columns - use the `` command wth df$ 
df$`GDP Growth`

#summary of a DataFrame 
summary(df)

#Structure of a DataFrame
str(df)

########################### Mini-Challenge 😀😀😀 ########################
source('https://bit.ly/38AN2As')

##### Ques 1 - Change the column Name to Column_1
colnames(df) <- c("Column_1", "Column_2", "Column_3")
colnames(df)

#Extract the second Last row in DataFrame 
head(tail(df,2),1)

#Get the unique no of Rows 
unique(df)


#unique value in each column
sapply(df, unique)




