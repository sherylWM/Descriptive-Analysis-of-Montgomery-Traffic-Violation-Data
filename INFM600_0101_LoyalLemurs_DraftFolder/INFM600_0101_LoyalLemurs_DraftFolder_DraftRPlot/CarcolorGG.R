#Reading the TrafficViolations.csv file 
TrafficData <- read.csv(file.choose(),header = T,sep=",")
attach(TrafficData)
#Gives a descriptive summary of the number of traffic violation incidents that have 
#occured by various cars across different colors
summary(TrafficData$Color)

#Load the ggplot2 package
library(ggplot2)
#Creating a data frame including 2 car colors
trafficDataFrame <- data.frame(color = factor(c("BLACK","RED"), levels=c("BLACK","RED")),total_violations = c(127582, 51939))
trafficDataFrame                              
#Creating a data frame including 5 car colors
trafficDataFrame2 <- data.frame(color = factor(c("BLACK","SILVER", "WHITE", "GRAY", "RED"), levels=c("BLACK","SILVER","WHITE","GRAY","RED")),total_violations = c(127582,118571,95783,68744,51939))
trafficDataFrame2

#plots a bar graph that compares traffic violations occured by Black and Red colored cars from 2013 - 2015
ggplot(data=trafficDataFrame, aes(x=color, y=total_violations, fill=color)) + geom_bar(colour="black", stat="identity")+ guides(fill=FALSE) + xlab("Color") + ylab("Total no of violations") + ggtitle("Traffic violations occured by Black and Red cars from 2013 - 2015")

#plots a line graph that compares traffic violations occured by Black, Silver, White, Gray and Red colored cars(Top 5) from 2013 to 2015
ggplot(data=trafficDataFrame2, aes(x=color, y=total_violations, group=1)) + geom_line() + geom_point() +xlab("Color") +  ylab("Total no of violations") + ggtitle("Traffic violations occured by top 5 colors of Cars from 2013 - 2015")

#Loads xkcd package
library(xkcd)
#using xkcd theme for the ggplot
ggplot(data=trafficDataFrame2, aes(x=color, y=total_violations, group=1)) + geom_line() + geom_point() +xlab("Color") +  ylab("Total no of violations") + ggtitle("Traffic violations occured by top 5 colors of Cars from 2013 - 2015") + theme_xkcd()

#Subsetting dataset to find number of traffic violations occured during the year 2013 by BLACK colored cars
blackCar2013 <- subset(TrafficData, TrafficData$Year_Of_Stop =="2013" & TrafficData$Color == "BLACK")

#Subsetting dataset to find number of traffic violations occured during the year 2014 by BLACK colored cars
blackCar2014 <- subset(TrafficData, TrafficData$Year_Of_Stop =="2014" & TrafficData$Color == "BLACK")

#Subsetting dataset to find number of traffic violations occured during the year 2015 by BLACK colored cars
blackCar2015 <- subset(TrafficData, TrafficData$Year_Of_Stop =="2015" & TrafficData$Color == "BLACK")

#Storing the count of violations in three different years in 3 variables
blackCarCount2013 <- nrow(blackCar2013)

blackCarCount2014 <- nrow(blackCar2014)

blackCarCount2015 <- nrow(blackCar2015)

#Creating a data frame using count of traffic violations in these 3 years.
trafficDataFrameYearwise <- data.frame(year = factor(c("2013","2014","2015"), levels=c("2013","2014","2015")),total_violations = c(36573, 43450, 47559))
trafficDataFrameYearwise

#Plotting a line plot using ggplot2 library to display the trend of total number of violations year wise
ggplot(data=trafficDataFrameYearwise, aes(x=year, y=total_violations, group=1)) + geom_line() + geom_point() +xlab("YEAR") +  ylab("Total no of violations") + ggtitle("Trend of traffic violations occured by Black colored Cars yearwise")
