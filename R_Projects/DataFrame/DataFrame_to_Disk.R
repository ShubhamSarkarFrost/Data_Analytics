#Export and Import Dataset 

#Create an economic performance DATAFRAME
#1. Creating a DataFrame -----------------------------------------------------
country <- c("France", "Germany", "Greece", "Italy", "Portugal", "Spain") #countries
gdp_growth <- c(1.3, 0.3,1.9, 0.3, NA, 2) #GDP growth Rate
mkt_type <- factor(c("High", "High", "Low", "Medium", "Low", "Medium")) #categories

df <- data.frame(country = country , gdp_growth=gdp_growth, markt_type = mkt_type, stringsAsFactors = F)
View(df)

#Export the DataFrame as CSV in a default location 
dir.create('C:/Users/Lenovo/Data Analytics/R_Projects/DataFrame/Performance_Dataset')
dir_path <- 'C:/Users/Lenovo/Data Analytics/R_Projects/DataFrame/Performance_Dataset'
setwd(dir_path)
getwd()

#Export without Row Numbers 
write.csv(df,"economic_workspace.csv", row.names = F)
#<Check file in windows>

#Export same file with row numbers 
write.csv(df,"economic_workspace_dir.csv", row.names = T)

#How to Check and avoid overwriting any file 
#From the File Path
dir.create('C:/Users/Lenovo/Data Analytics/R_Projects/DataFrame/Performance_Dataset/updated')
dir_name <- "C:/Users/Lenovo/Data Analytics/R_Projects/DataFrame/Performance_Dataset/updated"
file_name <- "economic_workpath_new"
ext <- "csv"
file_name_ext <- paste0(file_name, '.',ext)
file_name_ext

path <- file.path(dir_name,file_name_ext)
path



if(file.exists(path)){
  # add copy to the end of the file name and write 
  file_name <- paste0(file_name, '_copy')
  file_name_ext <- paste0(file_name, '.',ext)
  path <- file.path(dir_name, file_name_ext)
  write.csv(df,path,row.names = F)
  print("Duplicate File Existed")
}else{
  write.csv(df,path,row.names = F)
  print("New File Created")
}





