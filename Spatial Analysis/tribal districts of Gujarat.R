library(rgdal)
library(raster)
library(sp)

# Map of India with District boundaries
india_2<-readRDS(file = "gadm36_IND_2_sp.rds")


plot(india_2)

gujarat<-india_2[india_2$NAME_1=="Gujarat",]

plot(gujarat,col="yellow",border="yellow")
# Banaskantha
banaskantha<-gujarat[gujarat$NAME_2=="Banas Kantha",]
plot(banaskantha,col="blue",border="blue",add=TRUE)
# Bharuch
bharuch<-gujarat[gujarat$NAME_2=="Bharuch",]
plot(bharuch,col="blue",border="blue",add=TRUE)

# Chhota Udaipur
chhota_udaipur<-gujarat[gujarat$NAME_2=="Chhota Udaipur",]
plot(chhota_udaipur,col="blue",border="blue",add=TRUE)

# Districts of Gujarat as factors
gujarat$NAME_2<-as.factor(gujarat$NAME_2)

# Aravalli
aravalli<-gujarat[gujarat$NAME_2=="Aravalli",]
plot(aravalli,col="blue",border="blue",add=TRUE)

# Dahod
dahod<-gujarat[gujarat$NAME_2=="Dahod",]
plot(dahod,col="blue",border="blue",add=TRUE)

# Mahisagar
mahisagar<-gujarat[gujarat$NAME_2=="Mahisagar",]
plot(mahisagar,col="blue",border="blue",add=TRUE)

# Narmada
narmada<-gujarat[gujarat$NAME_2=="Narmada",]
plot(narmada,col="blue",border="blue",add=TRUE)

# Navsari
navsari<-gujarat[gujarat$NAME_2=="Navsari",]
plot(navsari,col="blue",border="blue",add=TRUE)

# Chhota Udaipur
chhota_udaipur<-gujarat[gujarat$NAME_2=="Chhota Udaipur",]
plot(chhota_udaipur,col="blue",border="blue",add=TRUE)

# Panch Mahals
panchmahals<-gujarat[gujarat$NAME_2=="Panch Mahals",]
plot(panchmahals,col="blue",border="blue",add=TRUE)

# Sabar Kantha
sabarkantha<-gujarat[gujarat$NAME_2=="Sabar Kantha",]
plot(sabarkantha,col="blue",border="blue",add=TRUE)

# Surat
surat<-gujarat[gujarat$NAME_2=="Surat",]
plot(surat,col="blue",border="blue",add=TRUE)

# Tapi
tapi<-gujarat[gujarat$NAME_2=="Tapi",]
plot(tapi,col="blue",border="blue",add=TRUE)

# The Dangs
dangs<-gujarat[gujarat$NAME_2=="The Dangs",]
plot(dangs,col="blue",border="blue",add=TRUE)

# Valsad
valsad<-gujarat[gujarat$NAME_2=="Valsad",]
plot(valsad,col="blue",border="blue",add=TRUE)