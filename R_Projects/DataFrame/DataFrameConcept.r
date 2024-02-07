#How to Create a DataFrame

#1. Creating a DataFrame -----------------------------------------------------
country <- c("France", "Germany", "Greece", "Italy", "Portugal", "Spain") #countries
gdp_growth <- c(1.3, 0.3,1.9, 0.3, NA, 2) #GDP growth Rate
mkt_type <- factor(c("High", "High", "Low", "Medium", "Low", "Medium")) #categories

#View
country
gdp_growth
mkt_type 


#Use the data.frame command 
df <- data.frame(country = country , gdp_growth=gdp_growth, markt_type = mkt_type )
df
class(df) #Data.frame
typeof(df)  #List 

#view DataFrame 
View(df)

#2 - visually edit the contents of a dataFrame
edit(df) #Opens the DataFrame in a Visual Editor
df_edited <- edit(df) #Store the edited DataFrame 

#3 - Access any of the Columns in a DataFrame with $notation
df_edited$country 

#Create a new Country Column
df$new_country <- abbreviate(df$country, 3)
View(df)

#If a Single Value is provided while creating a DataFrame , values get cycled 
df <- data.frame(country = country,
                 gdp_growth = gdp_growth,
                 market_type = mkt_type,
                 dummy_column = 0)

View(df) 
#Structure of a DataFrame 
str(df)

#alternatively use sapply() to check and store the class
class_of_df <- sapply(df,class) 
class_of_df

View(df_edited)

df_edited$population <- as.character(df_edited$population)

#5  . Column Bind & Row Bind
dfcbind <- cbind(df, df)
View(dfcbind)

dfrbind <- rbind(df,df)
View(dfrbind)


