mydata<-read.csv('household_power_consumption.txt', header=T, sep=';', na.strings = '?', stringsAsFactors = F)

mydata$Date<-as.Date(mydata$Date, "%d/%m/%Y")
feb2007<- subset(mydata, mydata$Date>="2007/02/01" & mydata$Date<='2007/02/02')

feb2007  <- subset(mydata, subset=(Date >= "2007/02/01" & Date <= "2007/02/02"))

datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

feb2007$DateTime<-as.POSIXct(paste(as.Date(feb2007$Date),feb2007$Time))

plot(feb2007$Global_active_power~feb2007$DateTime, ylab="Global Active Power (kilowatts)", xlab="", type="l")


dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
