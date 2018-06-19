library(sp)
library(RColorBrewer)

# Map of India with state boundaries

ind1=readRDS("gadm36_IND_1_sp.rds")
spplot(ind1, "NAME_1", scales=list(draw=T), colorkey=F, main="India")


# Map of India with States coloured
ind1$NAME_1 = as.factor(ind1$NAME_1)
ind1$fake.data = runif(length(ind1$NAME_1))
spplot(ind1,"NAME_1",  col.regions=rgb(0,ind1$fake.data,0), colorkey=T, main="Indian States")


gujarat1 = (ind1[ind1$NAME_1=="Gujarat",])
spplot(gujarat1,"NAME_1", col.regions=rgb(0,0,1), 
       main = "Gujarat, India",scales=list(draw=T), colorkey =F)


# Level 2 data from GADM i.e. upto level of district boundaries
ind2=readRDS("gadm36_IND_2_sp.rds")
spplot(ind2, "NAME_1", scales=list(draw=T), colorkey=F, main="India")

# Districts of Gujarat
gujarat2 = (ind2[ind2$NAME_1=="Gujarat",])
spplot(gujarat2,"NAME_1", main = "Gujarat Districts", colorkey =F)

# Districts of Gujarat Coloured map
gujarat2$NAME_2 = as.factor(gujarat2$NAME_2)
col = rainbow(length(levels(gujarat2$NAME_2)))
spplot(gujarat2,"NAME_2",  col.regions=col, colorkey=T)

# Districts of Gujarat coloued with stipulated fake data 
gujarat2$NAME_2 = as.factor(gujarat2$NAME_2)
gujarat2$fake.data = runif(length(gujarat2$NAME_1)) 
spplot(gujarat2,"NAME_2",  col.regions=rgb(0,gujarat2$fake.data, 0), colorkey=T)

# Colouring the districts with range of colours
col_no = as.factor(as.numeric(cut(gujarat2$fake.data, c(0,0.2,0.4,0.6,0.8,1))))
levels(col_no) = c("<20%", "20-40%", "40-60%","60-80%", ">80%")
gujarat2$col_no = col_no
myPalette = brewer.pal(5,"Greens")
spplot(gujarat2, "col_no", col=grey(.9), col.regions=myPalette, main="District Wise Data")


# Level 3 Map of India with boundaries of talukas
ind3=readRDS("gadm36_IND_3_sp.rds")
spplot(ind3, "NAME_1", scales=list(draw=T), colorkey=F, main="India")

# Map of India with taluka boundaries
gujarat3 = (ind3[ind3$NAME_1=="Gujarat",])

# Map of Gujarat with talukas coloured
gujarat3$NAME_3 = as.factor(gujarat3$NAME_3)
col = rainbow(length(levels(gujarat3$NAME_3)))
spplot(gujarat3,"NAME_3", main = "Taluk, District - Gujarat", 
       colorkey=T,col.regions=col,scales=list(draw=T))

# Map of Gandhinagar District with talukas
gujarat3 = (ind3[ind3$NAME_1=="Gujarat",])
gandhinagar = (gujarat3[gujarat3$NAME_2=="Gandhinagar",])
spplot(gandhinagar,"NAME_3", colorkey =F, 
       scales=list(draw=T), main = "Gandhinagar, Gujarat")

# Map of Gandhinagar taluka
gandhinagar = (gujarat3[gujarat3$NAME_2=="Gandhinagar",])
gandhinagar1 = (gandhinagar[gandhinagar$NAME_3=="Gandhinagar",])
spplot(gandhinagar1,"NAME_3", colorkey =F, scales=list(draw=T),
       main = "Gandhinagat Taluka")


# map of kalol Taluka
gandhinagar = (gujarat3[gujarat3$NAME_2=="Gandhinagar",])
kalol = (gandhinagar[gandhinagar$NAME_3=="Kalol",])
spplot(kalol,"NAME_3", colorkey =F, scales=list(draw=T),
       main = "Kalol Taluka")


# map of Dahegam Taluka
gandhinagar = (gujarat3[gujarat3$NAME_2=="Gandhinagar",])
dagegam = (gandhinagar[gandhinagar$NAME_3=="dahegam",])
spplot(dahegam,"NAME_3", colorkey =F, scales=list(draw=T),
       main = "Dahegam Taluka")

gandhinagar = (gujarat3[gujarat3$NAME_2=="Gandhinagar",])
dagegam = (gandhinagar[gandhinagar$NAME_3=="dahegam",])
spplot(dahegam,"NAME_3", colorkey =F, scales=list(draw=T),
       main = "Dahegam Taluka")



