png("plot2.png", width = 480, height = 480)

plot(power$Global_active_power ~ power$datetime, type="l", xlab="",
ylab="Global Active Power (kilowatts)", 
ylim=c(0, max(power$Global_active_power)))

dev.off()
