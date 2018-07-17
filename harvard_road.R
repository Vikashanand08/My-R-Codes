# Load required packages
library(rgdal)
library(sp)
library(raster)
# Loading and ploting HArvard shape file
aoiBoundry_HARV<-readOGR(path.expand("NEON-DS-Site-Layout-Files/HARV"),layer = "HarClip_UTMZ18")
plot(aoiBoundry_HARV)

plot(aoiBoundry_HARV,lwd=2,col="blue",border="blue")


# Importing HARV Roads 
harvroad<-readOGR(path.expand("NEON-DS-Site-Layout-Files/HARV"),layer = "HARV_roads")
plot(harvroad)

# Importing HARV Tower

harv_tower<-readOGR(path.expand("NEON-DS-Site-Layout-Files/HARV"),layer = "HARVtower_UTM18N")
plot(harv_tower)

plot(aoiBoundry_HARV,col="blue",border="blue")

plot(harvroad,add=TRUE,lwd=5,col="yellow")

plot(harv_tower,add=TRUE,col="black",lwd=4)

# Select Foothpath Type Road
stone_wall_path<-harvroad[harvroad$TYPE=="stone wall",]
length(stone_wall_path)

plot(stone_wall_path,col="green")
plot(aoiBoundry_HARV,lwd=2,col="blue",border="blue",add=TRUE)
plot(harvroad,add=TRUE)

# Different colours of stonewall
plot(stone_wall_path,col=c("green","blue","black","red","yellow","magenta"),lwd=5)
plot(harvroad,add=TRUE)

# Bicycles and Horses allowed in the harvard road
bic_horses_allowed<-harvroad[harvroad$BicyclesHo=="Bicycles and Horses Allowed",]
length(bic_horses_allowed)
plot(bic_horses_allowed,col=c("red","yellow","black","magenta","blue"),lwd=4)
plot(harvroad,add=TRUE)


# Demarcation of Harvard roads as Bicycles and Horses Allowed, 
# Bicycles and Horses not allowed and Do not show on received map

bi_ho_allowed<-harvroad[harvroad$BicyclesHo=="Bicycles and Horses Allowed",]
bi_ho_no<-harvroad[harvroad$BicyclesHo=="Bicycles and Horses NOT ALLOWED",]
bi_ho_do_no<-harvroad[harvroad$BicyclesHo=="DO NOT SHOW ON REC MAP",]

plot(bi_ho_allowed,col="blue",lwd=4)
plot(bi_ho_do_no,col="black",lwd=4,add=TRUE)
plot(bi_ho_no,col="magenta",lwd=4,add=TRUE)
