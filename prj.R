#C:\\amdocs\\Big Data\\Coursera\\Exploratory Data analysis\\Week 1\\Project

colClasses <- c("character")
datafile = "household_power_consumption.txt"
datatable <- read.table(datafile, sep = ";", header = TRUE)


relvnt_datatable <- datatable[datatable$Date == "1/2/2007" | datatable$Date == "2/2/2007" ,]

hist(as.numeric(as.character(relvnt_datatable$Global_active_power)))

#For Plot2
#dt <- head(as.Date(as.character(b$Date), "%d/%m/%Y"))

dt <- as.Date(relvnt_datatable$Date, "%d/%m/%Y")
time <- as.character(relvnt_datatable$Time)
comb <- paste(dt, time)

date_time <- strptime(comb, format = "%Y-%m-%d %H:%M:%S")

plot(date_time, as.numeric(as.character(relvnt_datatable$Global_active_power)), type = "l")


#For Plot3
png()

plot(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_1)), type = "n", xlab = "test", ylab = "hkhk")

lines(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_1)), type = "l")
lines(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_2)), type = "l", col = "red")
lines(date_time, as.numeric(as.character(relvnt_datatable$Sub_metering_3)), type = "l", col = " blue")

#For Plot3 - Annotate
legend <- c(colnames(relvnt_datatable)[7], colnames(relvnt_datatable)[8], colnames(relvnt_datatable)[9])
legend("topright", pch = 5, col = c("black", "red","blue"), legend = legend)

dev.off()
#class(dt)
#format(dt, "%a")
#plot( relevant$DateTime, as.numeric( relevant$Global_active_power ) )

#strptime(x, format="%y-%m-%d, %I:%M%p"