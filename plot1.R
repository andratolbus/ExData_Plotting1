mydata<-read.csv('household_power_consumption.txt', header=T, sep=';', na.strings = '?', stringsAsFactors = F)

mydata$Date<-as.Date(mydata$Date, "%d/%m/%Y")
feb2007<- subset(mydata, mydata$Date>="2007/02/01" & mydata$Date<='2007/02/02')


hist(feb2007$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')

dev.copy(png, file='plot1.png',width=480, height=480)
dev.off()
