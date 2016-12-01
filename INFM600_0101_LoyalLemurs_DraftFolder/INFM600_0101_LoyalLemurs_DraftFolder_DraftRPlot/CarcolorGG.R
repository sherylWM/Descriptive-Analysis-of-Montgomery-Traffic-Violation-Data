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


