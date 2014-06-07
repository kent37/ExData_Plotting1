# Create plot4

# Read the data if it is not already loaded; see ReadData.R for details
if (!exists('data')) source('ReadData.R')

# Initialize to put four plots in one and save as png
png('plot4.png')
par(mfrow=c(2,2))

# Top left
plot(data$DateTime, data$Global_active_power, xlab='', ylab='Global Active Power (kilowatts)', type='l')

# Top right
plot(data$DateTime, data$Voltage, xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(data$DateTime, data$Sub_metering_1, xlab='', ylab='Energy sub metering', type='l')
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')
legend('topright', lty=1,
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'))

# Bottom right
plot(data$DateTime, data$Global_reactive_power, type='l', xlab='datetime', ylab='Global_reactive_power')

dev.off()
