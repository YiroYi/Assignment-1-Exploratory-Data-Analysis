plot2 <- function(){
  
  
  data <- read.table("household_power_consumption.txt",header = TRUE,sep =";",stringsAsFactors=FALSE, dec=".")
  
  data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  
  day <- strptime(paste(data$Date,data$Time,sep = " "), "%d/%m/%Y %H:%M:%S") 
  Global_AP <- as.numeric(data$Global_active_power)
  #Construct the plot
  
  png("plot2.png", width=480, height=480)
  plot(day,Global_AP,type="l",xlab ="", ylab="Global Active Power (kilowatts)")
  dev.off()
  

  
} 