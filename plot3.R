#Plot 3
#Convert date and time to specific format
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data$DateTime<-as.POSIXct(paste(data$Date,data$Time))
#Open device
if(!file.exists('plots')) dir.create('plots')
png(filename='./plots/plot3.png',width=480,height=480,units='px')
#Create plot 3
plot(data$DateTime, data$Sub_metering_1, xlab=" ",ylab="Energy sub metering", type="l")
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd="1")
#Close device
dev.off()

