source("loaddata.R")

png(filename = "plot2.png",width = 480,height=480)
plot(pow$Time,pow$Global_active_power,type="l",ylab="Global Active Power(kilowatts)")
dev.off()