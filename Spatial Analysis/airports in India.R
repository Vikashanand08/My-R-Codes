airports<-read.csv(file = "india-airports.csv")

library(ggplot2)

# Details of type of airports in India
ggplot(data = airports)+geom_bar(aes(x=type,fill=type))

library(rgdal)
library(raster)
library(sp)

india_1<-readRDS(file = "gadm36_IND_1_sp.rds")

# Fortifying RDS file as dataframe such that it can be used to plot using ggplot2
india_1_fortify<-fortify(india_1)

map<-ggplot()+geom_path(data=india_1_fortify,aes(x=long,y=lat,group=group))

print (map)

map_projected<-map+coord_map()

print(map_projected) 

map_2<-ggplot()+geom_path(data=india_1_fortify,aes(x=long,y=lat,group=group))+
  geom_point(aes(x=72.63,y=23.21),col="red",size=3)+coord_map()

print(map_2)

airports$longitude_deg<-as.numeric(airports$longitude_deg)
airports$latitude_deg<-as.numeric(airports$latitude_deg)
map_3<-ggplot()+geom_path(data=india_1_fortify,aes(x=long,y=lat,group=group))+
  geom_point(aes(x=airports$longitude_deg,y=airports$latitude_deg),col="red",size=1)+coord_map()

print(map_3)




