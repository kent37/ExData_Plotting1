# Create plot3

# Read the data if it is not already loaded
if (!exists('data')) source('ReadData.R')

png('plot3.png')
plot(data$DateTime, data$Sub_metering_1, xlab='', ylab='Energy sub metering', type='l')
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')
legend('topright', lty=1,
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'))
dev.off()
