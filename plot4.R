source("loaddata.R")

png(filename = "plot4.png",width = 480,height=480)
par(mfrow=c(2,2))
plot(pow$Time,pow$Global_active_power,type="l",ylab="Global Active Power")
plot(pow$Time,pow$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(pow$Time, pow$Sub_metering_1, type="l", col="black", ylab="Energy sub metering")
lines(pow$Time, pow$Sub_metering_2, col="red")
lines(pow$Time, pow$Sub_metering_3, col="blue")
legend(x = "topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col = c("black","blue","red"),lty=1,cex=0.5)
plot(pow$Time,pow$Global_active_power,type="n",xlab="datetime",ylab="Global Active Power")
lines(pow$Time,pow$Global_active_power)
dev.off()
