#C:\\amdocs\\Big Data\\Coursera\\Exploratory Data analysis\\Week 1\\Project

datafile = "household_power_consumption.txt"
datatable <- read.table(datafile, sep = ";", header = TRUE)

relvnt_datatable <- datatable[datatable$Date == "1/2/2007" | datatable$Date == "2/2/2007" ,]

png(filename = "plot4.png")
par(mfcol = c(2,2))

#For Plot2
dt <- as.Date(relvnt_datatable$Date, "%d/%m/%Y")
time <- as.character(relvnt_datatable$Time)
comb <- paste(dt, time)

date_time <- strptime(comb, format = "%Y-%m-%d %H:%M:%S")

ylab = "Global Active Power"
xlab = ""

plot(date_time, as.numeric(as.character(relvnt_datatable$Global_active_power)), type = "l", xlab = xlab, ylab = ylab)


#For Plot3
ylab = "Energy sub metering"
xlab = ""

plot(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_1)), type = "n", xlab = xlab, ylab = ylab)

lines(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_1)), type = "l")
lines(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_2)), type = "l", col = "red")
lines(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_3)), type = "l", col = " blue")

#For Plot3 - Annotate
legend <- c(colnames(relvnt_datatable)[7], colnames(relvnt_datatable)[8], colnames(relvnt_datatable)[9])
legend("topright", bty = "n", lty = 1, col = c("black", "red","blue"), legend = legend)


#For new plots
plot(date_time, as.numeric(as.character(relvnt_datatable$Voltage)), type = "l", xlab = "datetime", ylab = "Voltage")
plot(date_time, as.numeric(as.character(relvnt_datatable$Global_reactive_power)), type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
