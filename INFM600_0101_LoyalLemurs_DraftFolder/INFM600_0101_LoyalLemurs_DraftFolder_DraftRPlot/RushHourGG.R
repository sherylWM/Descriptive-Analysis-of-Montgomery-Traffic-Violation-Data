#Reading the TrafficViolations.csv file 
TrafficData <- read.csv(file.choose(),header = T,sep=",")
attach(TrafficData)

#Calculations for the YEAR 2013

#Subsetting data to find evening Rush hours for the year 2013
TrafficDataRushHourPM2013 <- subset(TrafficData, Year_Of_Stop == "2013" &  Rush.Hour == "Rush Hour - PM")
#Subsetting data to find morning Rush hours for the year 2013
TrafficDataRushHourAM2013 <- subset(TrafficData, Year_Of_Stop == "2013" & Rush.Hour == "Rush Hour - AM")
#Subsetting data to find Non Rush hours for the year 2013
TrafficDataNonRushHr2013 <- subset(TrafficData, Year_Of_Stop == "2013" &  Rush.Hour == "Non-Rush Hour")

#Assigning total count of traffic violations to variables
RushHrAM2013Count <- nrow(TrafficDataRushHourAM2013)

RushHrPM2013Count <- nrow(TrafficDataRushHourPM2013)

NonRushHr2013Count <- nrow(TrafficDataNonRushHr2013) 

#Normalizing value for RushHr2013Count variable
#Since our Rush Hour period is calculated for 6 hours in the whole day
#and non-rush hour period is calculated for 18 hours we need to normalize our RushHrTotal 
#variable by multiplying it by 3
RushHr2013Count <- RushHrAM2013Count + RushHrPM2013Count
NormRushHr2013Count <- RushHr2013Count * 3 #Normalized Value


#Calculations for the YEAR 2014

#Subsetting data to find evening Rush hours for the year 2014
TrafficDataRushHourPM2014 <- subset(TrafficData, Year_Of_Stop == "2014" &  Rush.Hour == "Rush Hour - PM")
#Subsetting data to find morning Rush hours for the year 2013
TrafficDataRushHourAM2014 <- subset(TrafficData, Year_Of_Stop == "2014" & Rush.Hour == "Rush Hour - AM")
#Subsetting data to find Non Rush hours for the year 2013
TrafficDataNonRushHr2014 <- subset(TrafficData, Year_Of_Stop == "2014" &  Rush.Hour == "Non-Rush Hour")

#Assigning total count of traffic violations to variables
RushHrAM2014Count <- nrow(TrafficDataRushHourAM2014)

RushHrPM2014Count <- nrow(TrafficDataRushHourPM2014)

NonRushHr2014Count <- nrow(TrafficDataNonRushHr2014) 

#Normalizing value for RushHr2014Count variable
#Since our Rush Hour period is calculated for 6 hours in the whole day
#and non-rush hour period is calculated for 18 hours we need to normalize our RushHrTotal 
#variable by multiplying it by 3
RushHr2014Count <- RushHrAM2014Count + RushHrPM2014Count
NormRushHr2014Count <- RushHr2014Count * 3 #Normalized Value


#Calculations for the YEAR 2015

#Subsetting data to find evening Rush hours for the year 2015
TrafficDataRushHourPM2015 <- subset(TrafficData, Year_Of_Stop == "2015" &  Rush.Hour == "Rush Hour - PM")
#Subsetting data to find morning Rush hours for the year 2013
TrafficDataRushHourAM2015 <- subset(TrafficData, Year_Of_Stop == "2015" & Rush.Hour == "Rush Hour - AM")
#Subsetting data to find Non Rush hours for the year 2013
TrafficDataNonRushHr2015 <- subset(TrafficData, Year_Of_Stop == "2015" &  Rush.Hour == "Non-Rush Hour")

#Assigning total count of traffic violations to variables
RushHrAM2015Count <- nrow(TrafficDataRushHourAM2015)

RushHrPM2015Count <- nrow(TrafficDataRushHourPM2015)

NonRushHr2015Count <- nrow(TrafficDataNonRushHr2015) 

#Normalizing value for RushHr2015Count variable
#Since our Rush Hour period is calculated for 6 hours in the whole day
#and non-rush hour period is calculated for 18 hours we need to normalize our RushHrTotal 
#variable by multiplying it by 3
RushHr2015Count <- RushHrAM2015Count + RushHrPM2015Count
NormRushHr2015Count <- RushHr2015Count * 3 #Normalized Value

#Creating a data frame to store count of traffic violations during rush and non-rush hours during 2013, 2014 and 2015
RushHourPlot <- data.frame(Duration = factor(c("Rush Hour","Rush Hour","Rush Hour","Non-Rush Hour","Non-Rush Hour","Non-Rush Hour")),year = factor(c("2013","2014","2015","2013","2014","2015"), levels=c("2013","2014","2015")),total_violations = c(129414, 150903, 152262, 147227,173140,184348))
RushHourPlot
#Load ggplot2 library
library(ggplot2)

#Bar plot describing trend of traffic violations that occured during rush and non-rush hours year wise 
ggplot(data=RushHourPlot, aes(x=year, y=total_violations, fill=Duration)) +geom_bar(stat="identity", position=position_dodge(),colour="black") + ggtitle("Trend over 3 years for traffic violations during rush and non rush hours")

#Load xkcd package
library(xkcd)
#Adding xkcd theme 
ggplot(data=RushHourPlot, aes(x=year, y=total_violations, fill=Duration)) +geom_bar(stat="identity", position=position_dodge(),colour="black") + ggtitle("Trend over 3 years for traffic violations during rush and non rush hours") + theme_xkcd()

#Enhancing the plot
ggplot(data=RushHourPlot, aes(x=year, y=total_violations, fill=Duration)) +geom_bar(stat="identity", position=position_dodge(),colour="black") + ggtitle("Trend over 3 years for traffic violations during rush and non rush hours") + geom_text(aes(x=year, y=total_violations,label=total_violations),family="Humor Sans")+theme_xkcd()

