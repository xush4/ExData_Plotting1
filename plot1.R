energy<-read.table("./household_power_consumption.txt",header=T,sep=";")
energyFeb1<-energy[energy$Date=="1/2/2007",]
energyFeb2<-energy[energy$Date=="2/2/2007",]
energy2Days<-rbind(energyFeb1,energyFeb2)
require(stats)
a=as.numeric(energy2Days$Global_active_power)
a=a/500
hist(a,col="red",main ="Global Active Power",xlab = "Global Active Power (Kilowatts)")
dev.copy(png, file = "plot1.png")