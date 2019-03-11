##load dataset into r 

install.packages("sqldf")
library(sqldf)

power <- read.csv.sql("household_power_consumption.txt",
"select * from file where Date = '1/2/2007' or Date = '2/2/2007'", sep=";")

## combine Date and Time variables to create a variable, datetime:

power$datetime <- strptime(paste(power$Date, power$Time), 
format = "%d/%m/%Y %H:%M:%S")
power$datetime <- as.POSIXct(power$datetime)

png("plot1.png", width = 480, height = 480)

hist(power$Global_active_power, xlab="Global Active Power (kilowatts)", 
main="Global Active Power", col="red")

dev.off()
