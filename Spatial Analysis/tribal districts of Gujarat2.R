library(rgdal)
library(sp)
library(raster)
library(ggplot2)
library(ggmap)
library(rgeos)
library(tmap)
library(tmaptools)

india_2<-readRDS(file="gadm36_IND_2_sp.rds")


gujarat<-india_2[india_2$NAME_1=="Gujarat",]

plot(gujarat,col="magenta",border="white",lwd=2)

tribal_districts<-c("Aravalli","Banas Kantha","Bharuch","Chhota Udaipur","Dahod","Mahisagar",
                    "Narmada","Navsari","Panch Mahals","Sabar Kantha","Surat","Tapi","The Dangs","Valsad")

tribal_districts_map<-gujarat[gujarat$NAME_2 %in% tribal_districts,]

plot(tribal_districts_map,col="blue",border="white",lwd=2,add=TRUE)+title("Gujarat (ITDP Districts in Blue) ")

qtm(shp = tribal_districts_map,fill="NAME_2")

qtm("India",fill = "State")

