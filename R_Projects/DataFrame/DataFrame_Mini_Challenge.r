alphabets <- c(letters)
alphabets
numbers <- c(1:26)
numbers

df_letters_alphabets <- data.frame(Alphabets = alphabets , Numbers = numbers)
View(df_letters_alphabets)
update_df_letters <- edit(df_letters_alphabets)
update_df_letters