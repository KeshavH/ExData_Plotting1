x<-read.csv("C:/Data_Science/household_power_consumption.txt", sep=";") ##Retrieves file
z<-x[66637:69516,] ##Takes only 2007-02-01 to 2007-02-02 data

library(datasets)
numGAP<-as.numeric(as.character(z$Global_active_power))  ##makes global active power usable data

times<-paste(z$Date,z$Time) ##Makes date and time data into graphable form
times<-strptime(times, format="%d/%m/%Y %H:%M:%S")
png("C:/Data_Science/plot2.png", width=480, height=480)
plot(y=numGAP, x=times, type="l", ylab="Global Active Power (killowatts)", xlab="")
dev.off()