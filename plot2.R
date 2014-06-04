# Create plot2

# Read the data if it is not already loaded
if (!exists('data')) source('ReadData.R')

png('plot2.png')
plot(data$DateTime, data$Global_active_power, xlab='', ylab='Global Active Power (kilowatts)', type='l')
dev.off()
