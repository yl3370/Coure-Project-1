mydata<- read.table("~/Desktop/household_power_consumption.txt", header = TRUE, sep = ";")
selecdata<- mydata[mydata$Date == "1/2/2007"| mydata$Date == "2/2/2007", ]
GAP<- as.numeric(as.character(selecdata$Global_active_power))
png("plot1.png", width=480, height=480)
hist(GAP, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
