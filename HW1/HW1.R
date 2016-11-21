

college <-read.csv('C:/Users/ganapane/Documents/Sagar/Stanford/STATS 202/Assignments/HW1/College.csv',
                   header=TRUE)

head (college)

rownames (college )=college [,1]

college =college [,-1]

summary(college)

pairs(college[, 1:10], main='Scatter plot')

plot(college$Private, college$Outstate, xlab = "Private University", ylab ="Out of State tuition($)", main = "Out Station Tuition vs College Type")


college$Elite<-'No'
college[college$Top10perc > 50,]$Elite<-'Yes'
college$Elite<- as.factor(college$Elite)
summary(college$Elite)

plot(college$Elite, college$Outstate, xlab = "Elite University", ylab ="Out of State tuition($)", main = "Outstate Tuition Plot vs Elite Status")

par(mfrow = c(2,2), main= 'Histograms')
hist(college$Expend, col = 'red', xlab = "Expenditure", ylab = "Count", main='Histogram for Expenditure')
hist(college$PhD, col = 'blue', xlab = "PhD", ylab = "Count",main='Histogram for Phd')
hist(college$Grad.Rate, col = 'green', xlab = "Grad Rate", ylab = "Count",main='Histogram for Grad Rate')
hist(college$perc.alumni, col = 'orange', xlab = "% alumni", ylab = "Count",main='Histogram for % Alumni')