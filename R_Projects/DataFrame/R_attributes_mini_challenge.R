#Input Code 
source('https://bit.ly/2RF8D3M')

#1- Create an attribute name in df and assign 'market performance' as the value 
attr(df,'name') <- 'Market Performance'
#attributes of a Data Frame
attributes(df)

#2- Extract the name attribute from df 
attr(df,'name')

#3- add a comment to df with the string 'Contains user defined attributes'
comment(df) <- 'contains user defined attributes'
attributes(df)





