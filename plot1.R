source("loaddata.R")

png(filename = "plot1.png",width = 480,height=480)
hist(pow$Global_active_power,
     main="Global Active Power",
     xlab = "Global Active Power(kilowatts)",
     ylab="Frequency",
     col="red")
dev.off()
