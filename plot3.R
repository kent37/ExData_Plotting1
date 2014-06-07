# Create plot3

# Read the data if it is not already loaded; see ReadData.R for details
if (!exists('data')) source('ReadData.R')

# Create the plot and save it as png
png('plot3.png')

# Plon the three data sets
plot(data$DateTime, data$Sub_metering_1, xlab='', ylab='Energy sub metering', type='l')
lines(data$DateTime, data$Sub_metering_2, col='red')
lines(data$DateTime, data$Sub_metering_3, col='blue')

# Add a legend
legend('topright', lty=1,
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'))
dev.off()
