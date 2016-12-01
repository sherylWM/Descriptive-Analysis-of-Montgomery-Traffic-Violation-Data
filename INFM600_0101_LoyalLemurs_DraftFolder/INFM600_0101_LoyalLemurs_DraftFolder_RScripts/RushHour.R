#Reading the TrafficViolations.csv file 
TrafficData <- read.csv(file.choose(),header = T,sep=",")
attach(TrafficData)

#Gives a Descriptive summary of the entire Data Set
summary(TrafficData)

#Gives a Descriptive summary for the Rush Hour column of our Data Set
summary(Rush.Hour)

#Subsetting data to find Rush Hour for the year 2013
TrafficDataSubSet2013 <- subset(TrafficData, Year_Of_Stop == 2013)

#gives a summary of the data for non rush hour column for the year 2013
summary(TrafficDataSubSet2013$Rush.Hour)
#Assigning values to variables
RushHrTotal <- 21724 + 21414 #Total number of traffic violation incidents calcuated during Rush Hour AM and PM
#Total number of traffic violation incidents calcuated during Non-Rush Hours
NonRushHrTotal <- 147227 
#Normalizing value for RushHrTotal variable
#Since our Rush Hour period is calculated for 6 hours in the whole day
#and non-rush hour period is calculated for 18 hours we need to normalize our RushHrTotal 
#variable by multiplying it by 3
NormRushHrTotVal <- RushHrTotal * 3  #Normalized Value

#Displaying Bar plot for Rush and Non-Rush hours
barplot(c(NonRushHrTotal,NormRushHrTotVal),main="Barplot for Traffic Violations in 2013", xlab="Rush & Non-Rush hours", ylab="No. Of Traffic Violations", names.arg=c("Non-Rush Hours","Rush Hours"))

#Vector to store total no. of traffic violation incidents during 
#Non Rush hours and Rush hours
pieLabels <- c(NonRushHrTotal,NormRushHrTotVal)

#Pie Chart to represent traffic violations occuring during Rush hours and Non-Rush hours
pie(pieLabels,main="Pie Chart of Traffic Violations in 2013",labels = c("Non-Rush Hours","Rush Hours"))
box()

#Subsetting data to find Rush Hour for the year 2014
TrafficDataSubSet2014 <- subset(TrafficData, Year_Of_Stop == 2014)
#gives a summary of the data for non rush hour and rush hour columns
summary(TrafficDataSubSet2014$Rush.Hour)
#Assigning values to variables
RushHrTotal <- 24235 + 26066
NonRushHrTotal <- 173140
#Normalizing value for RushHrTotal variable
NormRushHrTotVal <- RushHrTotal * 3

#Displaying Bar plot for Rush and Non-Rush hours
barplot(c(NonRushHrTotal,NormRushHrTotVal),main="Barplot for Traffic Violations in 2014", xlab="Rush & Non-Rush hours", ylab="No. Of Traffic Violations", names.arg=c("Non-Rush Hours","Rush Hours"))

#Vector to store Non Rush hours and Rush hours
pieLabels <- c(NonRushHrTotal,NormRushHrTotVal)
#Pie Chart to represent traffic violations occuring during Rush hours and Non-Rush hours
pie(pieLabels,main="Pie Chart of Traffic Violations in 2014",labels = c("Non-Rush Hours","Rush Hours"))
box()


#subsetting data to find Rush Hour for the year 2015
TrafficDataSubSet2015 <- subset(TrafficData, Year_Of_Stop == 2015)
#gives a summary of the data for non rush hour and rush hour columns
summary(TrafficDataSubSet2015$Rush.Hour)
#Assigning values to variables
RushHrTotal <- 23208 + 27546
NonRushHrTotal <- 184348
#Normalizing value for RushHrTotal variable
NormRushHrTotVal <- RushHrTotal * 3

#Displaying Bar plot for Rush and Non-Rush hours
barplot(c(NonRushHrTotal,NormRushHrTotVal),main="Barplot for Traffic Violations in 2015", xlab="Rush & Non-Rush hours", ylab="No. Of Traffic Violations", names.arg=c("Non-Rush Hours","Rush Hours"))

#Vector to store Non Rush hours and Rush hours
pieLabels <- c(NonRushHrTotal,NormRushHrTotVal)
#Pie Chart to represent traffic violations occuring during Rush hours and Non-Rush hours
pie(pieLabels,main="Pie Chart of Traffic Violations in 2015",labels = c("Non-Rush Hours","Rush Hours"))
box()


