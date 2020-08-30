data <- read.table("household_power_consumption.txt", header = T,sep = ";", na.strings = "?",dec='.')
data_February_2007<-data[data$Date %in% c('1/2/2007','2/2/2007'),]

png('plot1.png',width=480,height=480)
hist(data_February_2007$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power(kilowatts)',ylab='Frequency')
dev.off()
