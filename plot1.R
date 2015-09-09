subdata <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt" '),sep=";")
hist(subdata[,3],col='red',xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png,file="plot1.png")
<<<<<<< HEAD
dev.off()
=======
dev.off()
>>>>>>> origin/master
