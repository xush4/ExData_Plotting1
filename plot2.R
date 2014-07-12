energy<-read.table("./household_power_consumption.txt",header=T,sep=";")
energyFeb1<-energy[energy$Date=="1/2/2007",]
energyFeb2<-energy[energy$Date=="2/2/2007",]
energy2Days<-rbind(energyFeb1,energyFeb2)
require(stats)
