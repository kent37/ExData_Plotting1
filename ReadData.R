# Shared code to read and clear the data
# Original data is not in this repo

# Use data.table for speed
library(data.table)

# fread doesn't handle ? as NA so read a fixed version of the 
# file created with sed s/?/NA/g
data_raw = fread('../household_power_consumption_NA.txt')

# Subset to just the dates of interest
data = data_raw[Date=='1/2/2007' | Date=='2/2/2007']
data = as.data.frame(data)
data$DateTime = with(data, strptime(paste(Date, Time), '%d/%m/%Y %H:%M:%S'))
