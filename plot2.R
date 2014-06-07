#C:\\amdocs\\Big Data\\Coursera\\Exploratory Data analysis\\Week 1\\Project\\ExData_Plotting1


datafile = "household_power_consumption.txt"
datatable <- read.table(datafile, sep = ";", header = TRUE)

#hard coding values
relvnt_datatable <- datatable[datatable$Date == "1/2/2007" | datatable$Date == "2/2/2007" ,]

#For Plot2
dt <- as.Date(relvnt_datatable$Date, "%d/%m/%Y")
time <- as.character(relvnt_datatable$Time)
comb <- paste(dt, time)

date_time <- strptime(comb, format = "%Y-%m-%d %H:%M:%S")

ylab = "Global Active Power (kilowatts)"
xlab = ""

png(filename = "plot2.png")

plot(date_time, as.numeric(as.character(relvnt_datatable$Global_active_power)), type = "l", xlab = xlab, ylab = ylab)

dev.off()
