#C:\\amdocs\\Big Data\\Coursera\\Exploratory Data analysis\\Week 1\\Project\\ExData_Plotting1

colClasses <- c("character")
datafile = "household_power_consumption.txt"
datatable <- read.table(datafile, sep = ";", header = TRUE)


relvnt_datatable <- datatable[datatable$Date == "1/2/2007" | datatable$Date == "2/2/2007" ,]

hist(as.numeric(as.character(relvnt_datatable$Global_active_power)), col = "red")
