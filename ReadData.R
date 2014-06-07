# Shared code to read and clear the data
# Original data is not in this repo, it is from the class web site
# at https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# Preprocessing outside of R:
# - Data was downloaded from the URL above on June 2, 2014
# - Zip file was unzipped using Mac OSX Archive Utility
#   This created the file household_power_consumption.txt
# - Question marks were converted to NA using the sed command
#   sed s/?/NA/g <household_power_consumption.txt >household_power_consumption_NA.txt
#   creating the file which is read below

# Use data.table for faster reading
library(data.table)

# fread doesn't handle ? as NA so read a fixed version of the file
# created as described above
data_raw = fread('../household_power_consumption_NA.txt')

# Subset to just the dates of interest
# Dates are in d/m/y format without leading zeros
data = data_raw[Date=='1/2/2007' | Date=='2/2/2007']

# Convert to data.frame because I know how to use it :-)
data = as.data.frame(data)

# Make a datetime column by concatenating the string date and time and conveting
data$DateTime = with(data, strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S'))
