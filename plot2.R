# Create plot2

# Read the data if it is not already loaded; see ReadData.R for details
if (!exists('data')) source('ReadData.R')

# Create the plot and save it as png
png('plot2.png')
plot(data$DateTime, data$Global_active_power, xlab='', ylab='Global Active Power (kilowatts)', type='l')
dev.off()
