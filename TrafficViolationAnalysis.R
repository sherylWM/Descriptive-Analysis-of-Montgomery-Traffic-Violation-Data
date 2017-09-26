#Loyal Lemurs

#Reading the TrafficViolations.csv file 
TrafficData <- read.csv(file.choose(),header = T,sep=",")
attach(TrafficData)

#Gives a Descriptive summary of the entire Data Set
summary(TrafficData)

#------------------------------------------------------------------------------------------------------------------------------------------

# Question 1 - Are particular characteristics of a car (such as color) prone to higher incidents of traffic violations?
#Variable used for analysis is "Cars"
#Gives a descriptive summary of the number of traffic violation incidents across different car colors
summary(TrafficData$Color)

#gives the maximum number of traffic violation incidents
#It can be observed that this figure represents color BLACK 
max(table(TrafficData$Color))

#gives the minimum number of traffic violation incidents
#It can be observed that this figure represents color CAMOUFLAGE 
min(table(TrafficData$Color))

#storing all values for car colors in a variable
car_colors <- table(TrafficData$Color)

#Plotting a bar graph using barplot() command
barplot(car_colors,main="Bar Plot of no. of Traffic Violations occured by cars of different colors", cex.names = .4)

#-------------------------------------------------------------------------------------------------------------------------------------------

# Question 2 - Is there an effect of the time of day/year (i.e. season/rush hours) on the number of traffic violations caused?
#Analysis for Rush Hour

#Question 2a - Effect of Rush Hour
#Variable used for analysis is "Rush_Hour"
#Gives a Descriptive summary for the Rush Hour column of our Data Set
summary(Rush.Hour)

#Subsetting data for the year 2013
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

#Displaying Bar plot for total no. of traffic violation incidents during Rush and Non-Rush hours
barplot(c(NonRushHrTotal,NormRushHrTotVal),main="Barplot for Traffic Violations in 2013", xlab="Rush & Non-Rush hours", ylab="No. Of Traffic Violations", names.arg=c("Non-Rush Hours","Rush Hours"))

#Vector to store total no. of traffic violation incidents during Non Rush hours and Rush hours
pieLabels <- c(NonRushHrTotal,NormRushHrTotVal)

#Pie Chart to represent traffic violations occuring during Rush hours and Non-Rush hours
pie(pieLabels,main="Pie Chart of Traffic Violations in 2013",labels = c("Non-Rush Hours","Rush Hours"))
box()

#Subsetting data for the year 2014
TrafficDataSubSet2014 <- subset(TrafficData, Year_Of_Stop == 2014)

#gives a summary of the data for non rush hour and rush hour columns
summary(TrafficDataSubSet2014$Rush.Hour)

#Assigning values to variables
RushHrTotal <- 24235 + 26066
NonRushHrTotal <- 173140
#Normalizing value for RushHrTotal variable
NormRushHrTotVal <- RushHrTotal * 3

#Displaying Bar plot for total no. of traffic violation incidents during Rush and Non-Rush hours
barplot(c(NonRushHrTotal,NormRushHrTotVal),main="Barplot for Traffic Violations in 2014", xlab="Rush & Non-Rush hours", ylab="No. Of Traffic Violations", names.arg=c("Non-Rush Hours","Rush Hours"))

#Vector to store total no. of traffic violation incidents during Non Rush hours and Rush hours
pieLabels <- c(NonRushHrTotal,NormRushHrTotVal)

#Pie Chart to represent traffic violations occuring during Rush hours and Non-Rush hours
pie(pieLabels,main="Pie Chart of Traffic Violations in 2014",labels = c("Non-Rush Hours","Rush Hours"))
box()

#subsetting data for the year 2015
TrafficDataSubSet2015 <- subset(TrafficData, Year_Of_Stop == 2015)

#gives a summary of the data for non rush hour and rush hour columns
summary(TrafficDataSubSet2015$Rush.Hour)

#Assigning values to variables
RushHrTotal <- 23208 + 27546
NonRushHrTotal <- 184348
#Normalizing value for RushHrTotal variable
NormRushHrTotVal <- RushHrTotal * 3

#Displaying Bar plot for total no. of traffic violation incidents during Rush and Non-Rush hours
barplot(c(NonRushHrTotal,NormRushHrTotVal),main="Barplot for Traffic Violations in 2015", xlab="Rush & Non-Rush hours", ylab="No. Of Traffic Violations", names.arg=c("Non-Rush Hours","Rush Hours"))

#Vector to store total no. of traffic violation incidents during Non Rush hours and Rush hours
pieLabels <- c(NonRushHrTotal,NormRushHrTotVal)
#Pie Chart to represent traffic violations occuring during Rush hours and Non-Rush hours
pie(pieLabels,main="Pie Chart of Traffic Violations in 2015",labels = c("Non-Rush Hours","Rush Hours"))
box()

#------------------------------------------------------------------------------------------------------------------------------------------

#Question 2b - Effect of Season
#Gives a Descriptive summary for the Season column of our Data Set
#Variable used for analysis is "Season"
summary(Season)
Summary_Season = summary(Season)

#Transform the summary stats for Season data into percentage values
Total_rows = nrow(TrafficData)
Percent_Season = Summary_Season*(100/Total_rows)

#Subsetting data for the year 2013
TrafficDataSubSet2013 <- subset(TrafficData, Year_Of_Stop == 2013)

#give a summary of season column for the year 2013 and store it in a variable
summary(TrafficDataSubSet2013$Season)
Summary_Season_2013 = summary(TrafficDataSubSet2013$Season)

#Transform the summary stats for Season data in 2013 into percentage values and store individual season values in separate variables
Total_rows_2013 = nrow(TrafficDataSubSet2013)
Percent_Season_2013 = Summary_Season_2013*(100/Total_rows_2013)
Autumn_2013_total = Percent_Season_2013[1]
Spring_2013_total = Percent_Season_2013[2]
Summer_2013_total = Percent_Season_2013[3]
Winter_2013_total = Percent_Season_2013[4]

#Display Bar plot (Season vs Percentage of Traffic Violations) for all seasons in 2013
barplot(c(Autumn_2013_total,Spring_2013_total,Summer_2013_total,Winter_2013_total),main="Barplot for Traffic Violations in 2013 (By Season)", xlab="Season", ylab="No. Of Traffic Violations", ylim=c(0,100), names.arg=c("Autumn","Spring","Summer","Winter"))

#Subsetting data for the year 2014
TrafficDataSubSet2014 <- subset(TrafficData, Year_Of_Stop == 2014)

#give a summary of season column for the year 2014 and store it in a variable
summary(TrafficDataSubSet2014$Season)
Summary_Season_2014 = summary(TrafficDataSubSet2014$Season)

#Transform the summary stats for Season data in 2014 into percentage values and store individual season values in separate variables
Total_rows_2014 = nrow(TrafficDataSubSet2014)
Percent_Season_2014 = Summary_Season_2014*(100/Total_rows_2014)
Autumn_2014_total = Percent_Season_2014[1]
Spring_2014_total = Percent_Season_2014[2]
Summer_2014_total = Percent_Season_2014[3]
Winter_2014_total = Percent_Season_2014[4]

#Display Bar plot (Season vs Percentage of Traffic Violations) for all seasons in 2014
barplot(c(Autumn_2014_total,Spring_2014_total,Summer_2014_total,Winter_2014_total),main="Barplot for Traffic Violations in 2014 (By Season)", xlab="Season", ylab="No. Of Traffic Violations", ylim=c(0,100), names.arg=c("Autumn","Spring","Summer","Winter"))

#Subsetting data for the year 2015
TrafficDataSubSet2015 <- subset(TrafficData, Year_Of_Stop == 2015)

#give a summary of season column for the year 2015 and store it in a variable
summary(TrafficDataSubSet2015$Season)
Summary_Season_2015 = summary(TrafficDataSubSet2015$Season)

#Transform the summary stats for Season data in 2015 into percentage values and store individual season values in separate variables
Total_rows_2015 = nrow(TrafficDataSubSet2015)
Percent_Season_2015 = Summary_Season_2015*(100/Total_rows_2015)
Autumn_2015_total = Percent_Season_2015[1]
Spring_2015_total = Percent_Season_2015[2]
Summer_2015_total = Percent_Season_2015[3]
Winter_2015_total = Percent_Season_2015[4]

#Display Bar plot (Season vs Percentage of Traffic Violations) for all seasons in 2015
barplot(c(Autumn_2015_total,Spring_2015_total,Summer_2015_total,Winter_2015_total),main="Barplot for Traffic Violations in 2015 (By Season)", xlab="Season", ylab="No. Of Traffic Violations", ylim=c(0,100), names.arg=c("Autumn","Spring","Summer","Winter"))

-------------------------------------------------------------------------------------------------------------------------------------------
#Question 3 - Does belonging to a particular race increase the probability of being issued a particular violation type?

#Variable used for analysis is "Race"
#Gives a Descriptive summary for the Race column of our Data Set
summary(Race)
Summary_Race = summary(Race)

#Subsetting data for drivers belonging to the DMV area
TrafficDataSubSetMD <- subset(TrafficData, TrafficData$Driver.State == "MD")
TrafficDataSubSetVA <- subset(TrafficData, TrafficData$Driver.State == "VA")
TrafficDataSubSetDC <- subset(TrafficData, TrafficData$Driver.State == "DC")
TrafficDataSubSetDMV <- rbind(TrafficDataSubSetMD, TrafficDataSubSetVA, TrafficDataSubSetDC)

#give a summary of race column for drivers belonging to the DMV area and store it in a variable
summary(TrafficDataSubSetDMV$Race)
Summary_Race_DMV = summary(TrafficDataSubSetDMV$Race)

#Transform the summary stats for Race data into percentage values
Total_Rows_Race = nrow(TrafficDataSubSetDMV)
Percent_Race = Summary_Race_DMV*(100/Total_Rows_Race)

#Create a table containing values of the demographics of the DMV area
demograph <- matrix(c(9.3,25.3,14.1,0,3.1,48.2),ncol=6,byrow=TRUE)
colnames(demograph) <- c("ASIAN","BLACK","HISPANIC","NATIVE AMERICAN","OTHER","WHITE")
demograph <- as.table(demograph)
