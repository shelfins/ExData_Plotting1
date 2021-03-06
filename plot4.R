subdata <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt" '),sep=";")
subdata[,10] <- as.POSIXct(paste(subdata[,1],subdata[,2]), format = "%d/%m/%Y %H:%M:%S")
par(mfcol=c(2,2))
with(subdata, {
	plot(subdata[,10],subdata[,3],type="l",ylab="Global Active Power (kilowatts)",xlab="")
	plot(subdata[,10],subdata[,7],type="l",ylab="Energy sub metering",xlab="")
	lines(subdata[,10],subdata[,8],col="red")
	lines(subdata[,10],subdata[,9],col="blue")
	legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1),bty="n")
	plot(subdata[,10],subdata[,5],xlab="datetime",ylab="Voltage",type="l")
	plot(subdata[,10],subdata[,4],xlab="datetime",ylab="Global_reactive_power",type="l")
})
dev.copy(png,file="plot4.png")
<<<<<<< HEAD
dev.off()
=======
dev.off()
>>>>>>> origin/master
