library(rgdal)
library(sp)
library(raster)

# India Boundry Map
india_0<-readRDS(file = "gadm36_IND_0_sp.rds")
plot(india_0,col="yellow",border="yellow",axes=TRUE)

# India Map with State Boundry 
india_1<-readRDS(file = "gadm36_IND_1_sp.rds")
plot(india_1,col="yellow",border="black",axes=TRUE)

# Selecting Gujarat from Map of India
gujarat<-india_1[india_1$NAME_1=="Gujarat",]

#Gujarat in Blue colour and rest of India in yellow colour with state boundry
plot(india_1,col="yellow",border="black",axes=TRUE)
plot(gujarat,col="blue",add=TRUE)

#Gujarat in Blue colour and rest of India in yellow colour without state boundry
plot(india_1,col="yellow",border="yellow",axes=TRUE)
plot(gujarat,col="blue",border="blue",add=TRUE)

# Selecting Jharkhand from Map of India
jharkhand<-india_1[india_1$NAME_1=="Jharkhand",]

# Gujaart and Jharkhand in Blue colour and rest of India in yellow colour without State Boundary
plot(india_1,col="yellow",border="yellow",axes=TRUE)
plot(gujarat,col="blue",border="blue",add=TRUE)
plot(jharkhand,col="blue",border="blue",add=TRUE)

# State and Union Territory as factors
india_1$TYPE_1<-as.factor(india_1$TYPE_1)
levels(india_1$TYPE_1)

states<-india_1[india_1$TYPE_1=="State",]
unions<-india_1[india_1$TYPE_1=="Union Territor",]

plot(states,col="yellow",border="yellow")
plot(unions,col="blue",border="blue",add=TRUE)


