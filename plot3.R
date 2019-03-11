png("plot3.png", width = 480, height = 480)

plot(power$Sub_metering_1 ~ power$datetime, type="l",
ylab="Energy sub metering", xlab="", ylim=c(0, 
max(power$Sub_metering_1, power$Sub_metering_2,power$Sub_metering_3)))

lines(power$Sub_metering_2~power$datetime, type="l", col = "red")
lines(power$Sub_metering_3~power$datetime, type="l", col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()

