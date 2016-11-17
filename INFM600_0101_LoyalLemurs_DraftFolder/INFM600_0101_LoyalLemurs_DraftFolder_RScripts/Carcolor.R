#Reading the TrafficViolations.csv file 
TrafficData <- read.csv(file.choose(),header = T,sep=",")
attach(TrafficData)
#Gives a descriptive summary of the number of traffic violation incidents that have 
#occured by various cars across different colors
summary(TrafficData$Color)
#gives the maximum number of traffic violation incidents
#can be observed that this figure represents color BLACK 
max(table(TrafficData$Color))

#gives the minimum number of traffic violation incidents
#can be observed that this figure represents color CAMOUFLAGE 
min(table(TrafficData$Color))

#storing all colors of car in a variable
car_colors <- table(TrafficData$Color)

car_colors

#Plotting a bar graph using barplot() command
barplot(car_colors,main="Bar Plot of no. of Traffic Violations occured by cars of different colors", cex.names = .4)







