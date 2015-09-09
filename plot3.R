subdata <- read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt" '),sep=";")
subdata[,10] <- as.POSIXct(paste(subdata[,1],subdata[,2]), format = "%d/%m/%Y %H:%M:%S")
plot(subdata[,10],subdata[,7],type="l",ylab="Energy sub metering",xlab="")
lines(subdata[,10],subdata[,8],col="red")
lines(subdata[,10],subdata[,9],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
dev.copy(png,file="plot3.png")
<<<<<<< HEAD
dev.off()
=======
dev.off()
>>>>>>> origin/master
