source("loaddata.R")

png(filename = "plot3.png",width = 480,height=480)
plot(pow$Time,pow$Sub_metering_1,type="l",ylab="Energy sub metering")
lines(pow$Time,pow$Sub_metering_2,type="l",col="blue")
lines(pow$Time,pow$Sub_metering_3,type="l",col="red")
legend(x = "topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","blue","red"),lty=1)
dev.off()
