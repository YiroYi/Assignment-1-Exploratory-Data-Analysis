plot1 <- function(){
  
  
  data <- read.table("household_power_consumption.txt",header = TRUE,sep =";",stringsAsFactors=FALSE, dec=".")
  
  data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
 
  Global_AP <- as.numeric(data$Global_active_power)
  
  #Construct the plot
  
  png("plot1.png", width=480, height=480)
  hist(Global_AP,main= "Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
  dev.off()
  
  
} 