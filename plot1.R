setwd("E:/shubbi study/R program/Corsera/Exploratory Data Analysis")
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#Subset the data from the dates 2007-02-01 and 2007-02-02.
subsetdata <- data[data$date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(subseetdata$Global_active_power)
# Created a png file 
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
