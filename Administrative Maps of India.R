
# Load raster package
library(raster)
library(sp)
library(RColorBrewer)

# Map of India
# Downlaod data from GADM website i.e. https://gadm.org/download_country_v3.html
india0<-readRDS("gadm36_IND_0_sp.rds")
plot(india0,border="blue")

# Map of India with State Borders
india1<-readRDS("gadm36_IND_1_sp.rds")
plot(india1,border="blue")


# Map of India with State and District Borders
india2<-readRDS("gadm36_IND_2_sp.rds")
plot(india2,border="blue")

# Map of India with State, District and Taluka Level
india3<-readRDS("gadm36_IND_3_sp.rds")
plot(india3,border="blue")

# Adding title and subtitle to the Map of India
india3<-readRDS("gadm36_IND_3_sp.rds")
plot(india3,border="blue")+
  title(main = "Map of India with State, District 
        and Taluka boundary",sub = "Source GADM Data")

# Map of United States
usa0<-readRDS("gadm36_USA_0_sp.rds")
plot(usa0,border="blue")

# Map of United States with State Boundry
usa1<-readRDS("gadm36_USA_1_sp.rds")
plot(usa1,border="blue")+title(main = "United States", sub = "Source GADM")


# Administrative Map of India
india_states<-readRDS("gadm36_IND_1_sp.rds")
n<-length(india_states$NAME_1)
plot(india_states,col=rainbow(n),main="Administartive Map of India")
text(india_states,india_states$NAME_1)

# Boundrymap of India with longitude and latitude as axes
plot(india0,border="red",lwd=3,axes=TRUE)

# Map of India with States colour
plot(india1,border="black",lwd=2,axes=2)
india1$NAME_1=as.factor(india1$NAME_1)
india1$fake.data=runif(length(india1$NAME_1))
spplot(india1,"NAME_1",col.regions=rgb(0,india1$fake.data,0),
       colorkey=T,main="States of India")


# Map of Gujarat in Blue colour
gujarat1 = (india1[india1$NAME_1=="Gujarat",])
spplot(gujarat1,"NAME_1", col.regions=rgb(0,0,1), 
       main = "Gujarat, India",scales=list(draw=T), colorkey =F)
 
# Map of Gujarat in Red colour
gujarat2 = (india1[india1$NAME_1=="Gujarat",])
spplot(gujarat2,"NAME_1", col.regions=rgb(1,0,0), 
       main = "Gujarat, India",scales=list(draw=T), colorkey =F)     


# Map of Gujarat in Green colour without district borders
gujarat3 = (india1[india1$NAME_1=="Gujarat",])
spplot(gujarat3,"NAME_1", col.regions=rgb(0,1,0), 
       main = "Gujarat, India",scales=list(draw=T), colorkey =F) 


# Map of Gujarat with district borders
gujarat4 = (india2[india2$NAME_1=="Gujarat",])
spplot(gujarat4,"NAME_1", main = "Gujarat Districts", colorkey =F)

# Map of Gujarat with districts coloured with different districts
gujarat4$NAME_2=as.factor(gujarat4$NAME_2)
col=rainbow(length(levels(gujarat4$NAME_2)))
spplot(gujarat4,"NAME_2",col.regions=col,colorkey=T)

# Map of Gujarat with district and taluka borders
gujarat5 = (india3[india3$NAME_2=="Gujarat",])
spplot(gujarat4,"NAME_2", main = "Gujarat Districts ", colorkey =F)



# Map of Gujarat with districts coloured with different districts and taluka border
gujarat4$NAME_2=as.factor(gujarat4$NAME_2)
col=rainbow(length(levels(gujarat4$NAME_2)))
spplot(gujarat4,"NAME_2",col.regions=col,colorkey=T)







# Map of Gandhinagar, Gujarat with taluka borders needs to be corrected
gujarat5 = (india3[india3$NAME_1=="Gujarat",])
gandhinagar = (gujarat5[gujarat5$NAME_2=="Gandhinagar",])
spplot(gandhinagar,border="red")

