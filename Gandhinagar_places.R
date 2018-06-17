library(ggmap)
library(ggplot2)

# RoadMap of Gandhhinagar Gujarat
gandhinagar<-get_map("Gandhinagar,Gujarat",zoom = 13,maptype = "roadmap")
gandhinagar_city<-ggmap(gandhinagar)
gandhinagar_city

# Satellite Map of Gandhhinagar Gujarat
gandhinagar_satellite<-get_map("Gandhinagar,Gujarat",zoom = 13,maptype = "satellite")
gandhinagar_city_satellite<-ggmap(gandhinagar_satellite)
gandhinagar_city_satellite

# Terrain Map of Gandhhinagar Gujarat
gandhinagar_terrain<-get_map("Gandhinagar,Gujarat",zoom = 13,maptype = "terrain")
gandhinagar_city_terrain<-ggmap(gandhinagar_terrain)
gandhinagar_city_terrain

# Google hybrid Map of Gandhhinagar Gujarat
gandhinagar_hybrid<-get_map("Gandhinagar,Gujarat",zoom = 13,maptype = "hybrid")
gandhinagar_hybridmap<-ggmap(gandhinagar_hybrid)
gandhinagar_hybridmap


# Location of Birsa Munda  Bhavan in Gandhinagar,Gujarat
bmb<-geocode("Birsa Munda Bhavan, Gandhinagar")
bmb
bmb_lon<-bmb$lon
bmb_lat<-bmb$lat
gandhinagar_1<-gandhinagar_city+geom_point(aes(x=bmb_lon,y=bmb_lat),size=5,color="blue")
akt<-geocode("Akshardham Temple, Gandhinagar, Gujarat")
akt_lon<-akt$lon
akt_lat<-akt$lat
gandhinagar_2<-gandhinagar_1+geom_point(aes(x=akt_lon,y=akt_lat),size=5,color="blue")
gandhinagar_2
