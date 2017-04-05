fileurl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl,"power_consumption.zip")
unzip("power_consumption.zip")
data_file<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?",stringsAsFactors = FALSE)
data_file$Date<-as.Date(data_file$Date,"%d/%m/%Y")
subset_data<-subset(data_file,Date>="2007-02-01" & Date<="2007-02-02")
png(file="plot1.png",height=480,width=480)
hist(subset_data$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()