# Create plot1

# Read the data if it is not already loaded; see ReadData.R for details
if (!exists('data')) source('ReadData.R')

# Create the plot and save it as png
png('plot1.png')
hist(data$Global_active_power, xlab='Global Active Power (kilowatts)', main='Global Active Power', col='red')
dev.off()
