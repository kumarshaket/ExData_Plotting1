#data loading
datafile <-"~/Downloads/household_power_consumption.txt"
household <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsethousehold <- household[household$Date %in% c("1/2/2007","2/2/2007"),]

#plotgeneration
datetime <- strptime(paste(subsethousehold$Date,subsethousehold$Time,sep="") ,"%d/%m/%Y %H:%M:%S")
globalActivePower <-as.numeric(subsethousehold$Global_active_power)
png("plot2.png",width = 480, height = 480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()