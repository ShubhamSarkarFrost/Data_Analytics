#Age of the Survey sent 
#set.seed(100)
#survey_sent_age <- runif(1000,min=10,max=70)
#survey_sent_age <- round(survey_sent_age)
#length(survey_sent_age)


#responses of the survey 
#survey_responses  <- sample(0:5,1000,replace = T)


#Input Code
#code URL - https://bit.ly/2PEtsvm
source('https://bit.ly/2PEtsvm')


#Total Number of People who responded 
length(survey_responses)

#How Many People responded between the age of 20 and 30 
pos_age <- which(survey_sent_age > 20 & survey_sent_age <30)
people_res <- survey_responses[pos_age]
length(people_res)


#How Many People Rated 4 or Above in the age group of 20 to 30 
rating_gt_4 <- survey_sent_age[(which(survey_sent_age > 20 & survey_sent_age <30) & (survey_responses >= 4))]
length(rating_gt_4)
rating_gt_4




