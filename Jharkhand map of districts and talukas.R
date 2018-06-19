library(sp)
library(RColorBrewer)


# Map of India
ind1=readRDS("gadm36_IND_1_sp.rds")
spplot(ind1, "NAME_1",scales=list(draw=T),colorkey=F,main="India")


# Map of Jharkhand
jharkhand1 = (ind1[ind1$NAME_1=="Jharkhand",])
spplot(jharkhand1,"NAME_1", col.regions=rgb(0,0,1), 
       main = "Jharkhand, India",scales=list(draw=T), colorkey =F)

# Map of Jharkhand filled with red and yellow border
jharkhand1 = (ind1[ind1$NAME_1=="Jharkhand",])
spplot(jharkhand1,"NAME_1", col.regions=rgb(0,0,1), 
       main = "Jharkhand, India",scales=list(draw=T), colorkey =F,fill="red",col="gold")


# Level 2 data from GADM i.e. upto level of district boundaries
ind2=readRDS("gadm36_IND_2_sp.rds")
spplot(ind2, "NAME_1", scales=list(draw=T), colorkey=F, main="India")

# Map of Jharkhand with district borders
jharkhand2 = (ind2[ind2$NAME_1=="Jharkhand",])
spplot(jharkhand2,"NAME_1", main = "Jharkhand Districts", colorkey =F)


# Map of Jharkhand with district borders and latitude-longitude details
jharkhand2 = (ind2[ind2$NAME_1=="Jharkhand",])
spplot(jharkhand2,"NAME_1", main = "Jharkhand Districts", 
       colorkey =F,scales=list(draw=T))

# Map of Jharkhand with district borders in Gold colour
spplot(jharkhand2,"NAME_1", main = "Jharkhand Districts", 
       colorkey =F,scales=list(draw=T),fill="gold")


# Map of Jharkhand with district regions coloured with different colours
jharkhand2$NAME_2=as.factor(jharkhand2$NAME_2)
col = rainbow(length(levels(jharkhand2$NAME_2)))
spplot(jharkhand2,"NAME_2",  col.regions=col, colorkey=T)


# Level 3 data from GADM i.e. upto level of block/taluka boundaries
ind3=readRDS("gadm36_IND_3_sp.rds")
spplot(ind3, "NAME_2", scales=list(draw=T), colorkey=F, main="India")

# Map of India with taluka boundaries
jharkhand3 = (ind3[ind3$NAME_1=="Jharkhand",])

# Map of Jharkhand with Blocks coloured
jharkhand3$NAME_3 = as.factor(jharkhand3$NAME_3)
col = rainbow(length(levels(jharkhand3$NAME_3)))
spplot(jharkhand3,"NAME_3", main = "Block, District - Jharkhand", 
       colorkey=T,col.regions=col,scales=list(draw=T))

# Map of Pashchimi Singhbhum District with Blocks
jharkhand3 = (ind3[ind3$NAME_1=="Jharkhand",])
Singhbhum_West = (jharkhand3[jharkhand3$NAME_2=="Pashchimi Singhbhum",])
spplot(Singhbhum_West,"NAME_3", colorkey =F, 
       scales=list(draw=T), main = "West Singhbhum, Jharkhand")

# Map of Deogarh District with Blocks

devgarh = (jharkhand3[jharkhand3$NAME_2=="Deoghar",])
spplot(devgarh,"NAME_3", colorkey =F, 
       scales=list(draw=T), main = "Devgarh, Jharkhand")

# Map of Ranchi District with Blocks
ranchi = (jharkhand3[jharkhand3$NAME_2=="Ranchi",])
spplot(ranchi,"NAME_3", colorkey =F, 
       scales=list(draw=T), main = "Ranchi, Jharkhand")


# Map of Ranchi district with blocks i.e. Khunti and Ranchi coloured
ranchi$NAME_3=as.factor(ranchi$NAME_3)
col = rainbow(length(levels(ranchi$NAME_3)))
spplot(ranchi,"NAME_3",  col.regions=col, colorkey=T)

# Map of Ranchi district with blocks i.e. Khunti and Ranchi coloured plus lat and lon asex
ranchi$NAME_3=as.factor(ranchi$NAME_3)
col = rainbow(length(levels(ranchi$NAME_3)))
spplot(ranchi,"NAME_3",  col.regions=col, colorkey=T,scales=list(draw=T))

# Map of Ranchi district with blcoks i.e. Chakradharpur and Chaibasa
Singhbhum_West$NAME_3=as.factor(Singhbhum_West$NAME_3)
col = rainbow(length(levels(Singhbhum_West$NAME_3)))
spplot(Singhbhum_West,"NAME_3",  col.regions=col, colorkey=T,scales=list(draw=T))
