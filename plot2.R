data <- read.table("household_power_consumption.txt", header = T,sep = ";", na.strings = "?",dec='.')
data_February_2007<-data[data$Date %in% c('1/2/2007','2/2/2007'),]

date_time<-strptime(paste(data_February_2007$Date,data_February_2007$Time,sep=' ') ,'%d/%m/%Y %H:%M:%S')
png('plot2.png',width=480,height=480)
plot(date_time,data_February_2007$Global_active_power,xlab='',ylab='Global Active Power(kilowatts)',type='l')
dev.off()

