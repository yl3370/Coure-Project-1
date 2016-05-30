mydata<- read.table("~/Desktop/household_power_consumption.txt", header = TRUE, sep = ";")
selecdata<- mydata[mydata$Date == "1/2/2007"| mydata$Date == "2/2/2007", ]
GAP<- as.numeric(as.character(selecdata$Global_active_power))
datetime <- strptime(paste(selecdata$Date, selecdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, GAP, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
