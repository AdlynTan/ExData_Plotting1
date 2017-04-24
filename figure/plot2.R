#Plot 2
#Convert date and time to specific format
data$Date<-as.Date(data$Date, format="%d/%m/%Y")
data$DateTime<-as.POSIXct(paste(data$Date,data$Time))
#Open Device
if(!file.exists('plots')) dir.create('plots')
png(filename='./plots/plot2.png',width=480,height=480,units='px')
#Create plot 2
plot(data$DateTime, data$Global_active_power, xlab = " ", ylab = "Global Active Power (kilowatt)", type = "l")
# close device
dev.off()

