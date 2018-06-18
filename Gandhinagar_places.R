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

# Distance between Birsa Munda Bhavan and Akshardham Temple in Gandhinagar, Gujarat in driving mode
distance<-mapdist(from = "Birsa Munda Bhavan, Gandhinagar",
                  to="Akshardham Temple, Gandhinagar, Gujarat",mode = "driving")
# All details of distance beween Birsa Munda Bhavan and Akshardham Temple in driving mode
distance 
# distance beween Birsa Munda Bhavan and Akshardham Temple in KM-driving mode
distance$km
## distance beween Birsa Munda Bhavan and Akshardham Temple in Minutes-driving mode
distance$minutes

# Distance between Birsa Munda Bhavan and Akshardham Temple in Gandhinagar, Gujarat in walking mode
distance_1<-mapdist(from = "Birsa Munda Bhavan, Gandhinagar",
                  to="Akshardham Temple, Gandhinagar, Gujarat",mode = "walking")
# All details of distance beween Birsa Munda Bhavan and Akshardham Temple in walking mode
distance_1
# distance beween Birsa Munda Bhavan and Akshardham Temple in KM-walking mode
distance_1$km
# distance beween Birsa Munda Bhavan and Akshardham Temple in Minutes-walking mode
distance_1$minutes

# Straingt line between Birsa Munda Bhavan and Akshar Dham Temple
# Row binding of geocode of Birsa Munda Bhavan and Akshar Dham Temple
gnr_places<-rbind(bmb,akt)
# A straight line between Birsa Munda Bhavan and Akshar Dham Temple
gandhinagar_2+geom_line(data = gnr_places,aes(x=lon,y=lat),color="black",size=2)

