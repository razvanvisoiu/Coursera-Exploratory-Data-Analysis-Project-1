data <- read.table("household_power_consumption.txt", header = T,sep = ";", na.strings = "?",dec='.')
data_February_2007<-data[data$Date %in% c('1/2/2007','2/2/2007'),]

date_time<-strptime(paste(data_February_2007$Date,data_February_2007$Time,sep=' ') ,'%d/%m/%Y %H:%M:%S')
png('plot3.png',width=480,height=480)
plot(date_time,data_February_2007$Sub_metering_1,xlab='',ylab='Energy Submetering',type='l')
lines(date_time,data_February_2007$Sub_metering_2,type='l',col='red')
lines(date_time,data_February_2007$Sub_metering_3,type='l',col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,lwd=3,col=c('black','red','blue'))
dev.off()

