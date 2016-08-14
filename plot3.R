plot3 <- function(){
  
  
  data <- read.table("household_power_consumption.txt",header = TRUE,sep =";",stringsAsFactors=FALSE, dec=".")
  
  data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  
  day <- strptime(paste(data$Date,data$Time,sep = " "), "%d/%m/%Y %H:%M:%S") 
  
  Global_AP <- as.numeric(data$Global_active_power)
  energy_SM1 <- as.numeric(data$Sub_metering_1)
  energy_SM2 <- as.numeric(data$Sub_metering_2)
  energy_SM3 <- as.numeric(data$Sub_metering_3)
  #Construct the plot
  
  png("plot3.png", width=480, height=480)
  plot(day,energy_SM1,type="l",xlab ="", ylab="Energy sub metering",col="black")
  lines(day,energy_SM2,type="l",xlab ="",col="red")
  lines(day,energy_SM3,type="l",xlab ="",col="blue")
  legend("topright",c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1, lwd=2.5, col=c("black", "red", "blue"))
  dev.off()
  
  
} 