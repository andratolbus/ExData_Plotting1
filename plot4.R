mydata<-read.csv('household_power_consumption.txt', header=T, sep=';', na.strings = '?', stringsAsFactors = F)

mydata$Date<-as.Date(mydata$Date, "%d/%m/%Y")
feb2007<- subset(mydata, mydata$Date>="2007/02/01" & mydata$Date<='2007/02/02')

feb2007  <- subset(mydata, subset=(Date >= "2007/02/01" & Date <= "2007/02/02"))

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

feb2007$DateTime<-as.POSIXct(paste(as.Date(feb2007$Date),feb2007$Time))

png('plot4.png', width=480, height=480, bg='white')
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

plot(feb2007$Global_active_power~feb2007$DateTime, ylab="Global Active Power (kilowatts)", xlab="", type="l")

plot(feb2007$Voltage~feb2007$DateTime, ylab="Global Active Power (kilowatts)", xlab="datetime",type="l")


with(feb2007,plot(Sub_metering_1~DateTime, xlab="",ylab="Energy sub metering",type="l"))
with(feb2007,lines(Sub_metering_2~DateTime, col="Red"))
with(feb2007,lines(Sub_metering_3~DateTime, col="Blue"))
legend("topright", legend=c("Sub_metering_1   ", "Sub_metering_2   ", "Sub_metering_3   "), col=c("Black", "Red", "Blue"), bty='n',lty=1, lwd=2, cex = 0.7,xjust=4,yjust=1)


plot(feb2007$Global_reactive_power~feb2007$DateTime, ylab="Global_reactive_power", xlab="datetime",type="l")



