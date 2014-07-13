x<-read.csv("C:/Data_Science/household_power_consumption.txt", sep=";") ##Retrieves file
z<-x[66637:69516,] ##Takes only 2007-02-01 to 2007-02-02 data

library(datasets)
numGAP<-as.numeric(as.character(z$Global_active_power))  ##Takes the desired plotting data
png("C:/Data_Science/plot1.png", width=480, height=480) ##Creating png
hist(numGAP, col="red",main="Global Active Power", xlab="Global Active Power (killowatts)") ##Creating graph with red color, and appropriate labels
dev.off()