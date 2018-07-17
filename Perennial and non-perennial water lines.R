library(rgdal)
library(sp)
library(raster)

india_water_lines<-readOGR(path.expand("IND_wat"),layer = "IND_water_lines_dcw")
plot(india_water_lines)

# Perennial Wwater Lines
perennial<-india_water_lines[india_water_lines$HYC_DESCRI=="Perennial/Permanent",]

# Non-Perennial Water Lines
non_perennial<-india_water_lines[india_water_lines$HYC_DESCRI=="Non-Perennial/Intermittent/Fluctuating",]

# Plotting perennial and non-perennial water lines
plot(perennial,col="red")
plot(non_perennial,col="blue",add=TRUE)