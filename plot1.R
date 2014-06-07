#C:\\amdocs\\Big Data\\Coursera\\Exploratory Data analysis\\Week 1\\Project\\ExData_Plotting1

datafile = "household_power_consumption.txt"
datatable <- read.table(datafile, sep = ";", header = TRUE)

#hard coding values
relvnt_datatable <- datatable[datatable$Date == "1/2/2007" | datatable$Date == "2/2/2007" ,]

xlab = "Global Active Power (kilowatts)"
main = "Global Active Power"

#height & width - 480 pixels are by default
png(filename = "plot1.png")

hist(as.numeric(as.character(relvnt_datatable$Global_active_power)), col = "red", xlab = xlab, main = main)

dev.off()
