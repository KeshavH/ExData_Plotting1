x<-read.csv("C:/Data_Science/household_power_consumption.txt", sep=";") ##Retrieves file
z<-x[66637:69516,] ##Takes only 2007-02-01 to 2007-02-02 data

library(datasets)

times<-paste(z$Date,z$Time) ##Makes date and time data into graphable form
times<-strptime(times, format="%d/%m/%Y %H:%M:%S")
png("C:/Data_Science/plot4.png", width=480, height=480)
par(mfrow=c(2,2))
with(z, {
        plot(y=numGAP, x=times, type="l", ylab="Global Active Power (killowatts)", xlab="")
        plot(y=z$Voltage, x=times, type="l", ylab="", xlab="datetime")
        plot(x=times, y=as.numeric(as.character(z$Sub_metering_1)), xlab="", ylab="Energy sub metering", type="l")
        lines (x= times, y=as.numeric(as.character(z$Sub_metering_2)), col ="red")
        lines (x= times, y=as.numeric(as.character(z$Sub_metering_3)), col ="blue")
        legend("topright" , border = "black",c("Sub_metering_1 ","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),bty="o",lwd=c(2.5,2.5,2.5),col=c("black", "red","blue"))
        plot(x=times, y=numGRP, ylab="Global_reactive_power", xlab="datetime", type="l")
        
})
dev.off()