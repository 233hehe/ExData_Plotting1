power<-read.table(file = "household_power_consumption.txt",header = T,sep=";",na.strings = "?")
gsub(pattern = "?",replacement = NA,x = power)

power$Time<-strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S")
power$Date<-as.Date(power$Date,"%d/%m/%Y")
power$Global_active_power=as.numeric(power$Global_active_power)
power$Global_reactive_power=as.numeric(power$Global_reactive_power)
power$Voltage=as.numeric(power$Voltage)
power$Global_intensity=as.numeric(power$Global_intensity)
power$Sub_metering_1=as.numeric(power$Sub_metering_1)
power$Sub_metering_2=as.numeric(power$Sub_metering_2)


pow<-subset.data.frame(power,Date %in% as.Date(c("2007-02-01", "2007-02-02"),"%Y-%m-%d"))
