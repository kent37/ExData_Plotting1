# Create plot1

# Read the data if it is not already loaded
if (!exists('data')) source('ReadData.R')

png('plot1.png')
hist(data$Global_active_power, xlab='Global Active Power (kilowatts)', main='Global Active Power', col='red')
dev.off()
