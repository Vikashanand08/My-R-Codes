library(rgdal)
library(raster)
library(sp)
library(tmap)
library(tmaptools)
library(dplyr)

india_3<-readRDS(file="gadm36_IND_3_sp.rds")


gujarat<-india_3[india_3$NAME_1=="Gujarat",]


ITDP_districts<-c("Aravalli","Banas Kantha","Bharuch",
                  "Chhota Udaipur","Dahod","Mahisagar",
                  "Narmada","Navsari","Panch Mahals","Sabar Kantha","Surat","Tapi","The Dangs","Valsad")

tribal_districts<-india_3[india_3$NAME_2 %in% c("Aravalli","Banas Kantha","Bharuch","Chhota Udaipur","Dahod","Mahisagar",
                                                "Narmada","Navsari","Panch Mahals","Sabar Kantha","Surat","Tapi",
                                                "The Dangs","Valsad"),]

plot(gujarat,col="yellow",border="yellow")
plot(tribal_districts,col="blue",border="blue",add=TRUE)                                                

tribal_districts_1<-india_3[india_3$NAME_2 %in% ITDP_districts,]
plot(tribal_districts_1)




