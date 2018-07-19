library(rgdal)
library(raster)
library(sp)
library(ggplot2)
library(tmap)
library(tmaptools)


india_2<-readRDS(file="gadm36_IND_2_sp.rds")

gujarat<-india_2[india_2$NAME_1=="Gujarat",]

plot(gujarat,col="blue",border="blue")


qtm(shp = gujarat,fill = "NAME_2",fill.palette="Blues")

gujarat_districts<-gujarat$NAME_2
tribal_districts<-gujarat_districts[c(4,5,6,9,10,21,22,23,27,28,30,31,33,19)]  

gujarat$tdd_guj<-c("N","N","N","Y","Y","Y","N","N","Y","Y","N","N","N","N","N","N","N","N","Y",
                                    "N","Y","Y","Y","N","N","N","Y","Y","N","Y","Y","N","Y")

gujarat$gsadjfha<-c(1:33)


gujarat_tribal<-gujarat[gujarat$tdd_guj=="Y",]

plot(gujarat,col="yellow",border="yellow")
plot(gujarat_tribal,col="blue",border="blue",add=TRUE)

