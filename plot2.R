subdata <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt" '),sep=";")
subdata[,10] <- as.POSIXct(paste(subdata[,1],subdata[,2]), format = "%d/%m/%Y %H:%M:%S")
plot(subdata[,10],subdata[,3],type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
<<<<<<< HEAD
dev.off()
=======
dev.off()
>>>>>>> origin/master
