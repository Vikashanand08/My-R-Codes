


# Reading shape file
library(rgdal)
waterlines<-readOGR(path.expand("IND_wat"),layer = "IND_water_lines_dcw")
# Ploting water lines of India
library(sp)
plot(waterlines)
# Ploting water areas of India
waterareas<-readOGR(path.expand("IND_wat"),layer = "IND_water_areas_dcw")
plot(waterareas)


library(ggplot2)
library(ggmap)
waterareas_df<-fortify(waterareas)

map<-ggplot()+geom_point(data=waterareas_df,aes(x=long,y=lat,group=group),color="blue")
print(map)



waterlines_df<-fortify(waterlines)

map2<-ggplot()+geom_point(data=waterlines_df,aes(x=long,y=lat))
print(map2)

map_projected<-map+coord_map()

print(map_projected)

plot(waterareas@data)

