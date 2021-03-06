library(ggplot2)
library(ggmap)
# Geocodes of New Delhi, Mumbai, Kolkata and Bangalore
delhi<-geocode("New Delhi, India")
mumbai<-geocode("Mumbai, India")
kolkata<-geocode("Kolkata, India")
bangalore<-geocode("Bangalore, India")
places<-rbind(delhi,mumbai,kolkata,bangalore)

# Map of India
india<-get_map("India",zoom=5,maptype = "roadmap")
indiamap<-ggmap(india)
# Plot New Delhi, Mumbai, Kolkata and Bangalore in the Map of India 
india_places<-indiamap+geom_point(data = places,aes(x=lon,y=lat),size=3)

# Golden Quadrilateral-New Delhi, Mumbai, Bangalore, Kolkata
mumbai_delhi<-rbind(mumbai,delhi)
delhi_kolkata<-rbind(delhi,kolkata)
kolkata_bangalore<-rbind(kolkata,bangalore)
bangalre_mumbai<-rbind(bangalore,mumbai)
goldern_rectangle<-india_places+
  geom_line(data=mumbai_delhi,aes(x=lon,y=lat),size=1,color="gold")+
  geom_line(data=delhi_kolkata,aes(x=lon,y=lat),size=1,color="gold")+
  geom_line(data=kolkata_bangalore,aes(x=lon,y=lat),size=1,color="gold")+
  geom_line(data=bangalre_mumbai,aes(x=lon,y=lat),size=1,color="gold")
goldern_rectangle

dis_mumbai_delhi<-mapdist(from = "mumbai",to="delhi",mode = "driving")
dis_mumbai_delhi
dis_delhi_kolkata<-mapdist(from="delhi",to="kolkata",mode="driving")
dis_mumbai_delhi
dis_kolkata_bangalore<-mapdist(from = "kolkata",to="bangalore",mode="driving")
dis_kolkata_bangalore
dis_bangalore_mumbai<-mapdist(from="bangalore",to="mumbai",mode="driving")
dis_bangalore_mumbai

distances<-rbind(dis_mumbai_delhi,dis_delhi_kolkata,
                 dis_kolkata_bangalore,dis_bangalore_mumbai)
distances