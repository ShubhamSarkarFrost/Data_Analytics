#02 . Date Operations -------------------------------------------------------->
#number of days in milenium 

n_days_milenium <- as.Date('2029-12-31') - as.Date('2020-01-01')
n_days_milenium


#Date Functions
myDate <- as.Date('2022-07-04')
weekdays(myDate)

months(myDate)

quarters(myDate)

#Date sequences
day_sequences <- seq(as.Date('2022-07-04'),length.out=36,by='day')
day_sequences

#Month Sequences
month_sequences <- seq(as.Date('2022-07-04'),length.out=36,by='month')
month_sequences

#Year Sequences
year_sequences <- seq(as.Date('2022-07-04'),length.out=36,by='year')
year_sequences

