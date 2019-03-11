png("plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))
with(power, {
	plot(Global_active_power ~ datetime, type="l", xlab="",
ylab="Global Active Power", 
ylim=c(0, max(Global_active_power)))
	plot(Voltage~datetime, type="l", ylim=c(min(Voltage),max(Voltage)))
	plot(Sub_metering_1 ~ datetime, type="l",
ylab="Energy sub metering", xlab="", ylim=c(0, 
max(Sub_metering_1, Sub_metering_2,Sub_metering_3)))

lines(Sub_metering_2~datetime, type="l", col = "red")
lines(Sub_metering_3~datetime, type="l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
lty=1, lwd=2.5, col=c("black", "red", "blue"), cex=0.75, bty="n")
	plot(Global_reactive_power~datetime, type="l", 
ylim=c(0,max(Global_reactive_power)))
})

dev.off()



