#  Get the Data from the Souce Function 

# Link - https://bit.ly/2PlMAPW

source('https://bit.ly/2PlMAPW')

#<----------------------------------------Check which Data are NA ------------------------------------------------------------>
is.na(pizza_tc_score)

#<------------------------------------------Remove----------------------------------------------------------------------------->
Is_Not_Null <- !is.na(pizza_tc_score)
#Method - 1
pizza_tc_score[Is_Not_Null]

#Method - 2
#na.omit(pizza_tc_Score)

#<----------------------------------------Replace ----------------------------------------------------------------------------->
na_pos = which(is.na(pizza_tc_score))
pizza_tc_score[na_pos] = 6
pizza_tc_score
