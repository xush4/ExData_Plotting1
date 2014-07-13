energy<-read.table("./household_power_consumption.txt",header=T,sep=";")
energyFeb1<-energy[energy$Date=="1/2/2007",]
energyFeb2<-energy[energy$Date=="2/2/2007",]
energy2Days<-rbind(energyFeb1,energyFeb2)
energy2Days<-energy2Days[complete.cases(energy2Days),]
require(stats)
date<-as.Date(energy2Days$Date,format="%d/%m/%y")
time<-as.vector(energy2Days$Time)
x <- paste(date,time,sep=" ")
dateadjusted<-strptime(x,format="%w %H:%M:%S")
energy2Days<-data.frame(energy2Days,dateadjusted)
png(file = "plot3.png")
with(energy2Days,plot(energy2Days[,7],energy2Days[,10],col="white",xlab="",ylab="Energysub metering")
line(energy2Days[,7],energy2Days[,10],col="black")
line(energy2Days[,8],energy2Days[,10],col="blue")
line(energy2Days[,9],energy2Days[,10],col="red")      
dev.copy(png, file = "plot3.png")
dev.off()