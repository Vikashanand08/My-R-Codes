# Plotting Hotels, Resorts and guest houses of Goibbo
library(ggplot2)
library(ggmap)
goibbo<-read.csv(file="goibbo.csv")
ind<-get_map("India",zoom = 5)
india<-ggmap(ind)
india+geom_point(aes(x=longitude,y=latitude),data = goibbo)


# Changing colour of point to red 
india+geom_point(aes(x=longitude,y=latitude),data = goibbo,color="red")


# Increasing the size of point
india+geom_point(aes(x=longitude,y=latitude),data = goibbo,color="red",size=2)
india+geom_point(aes(x=longitude,y=latitude),data = goibbo,color="red",size=2)


#Changing colour of point
india+geom_point(aes(x=longitude,y=latitude),data = goibbo,
                 color="blue",size=3)

# Details of hotels with star ratings
ggplot(data=goibbo,aes(x=hotel_star_rating))+
  geom_bar(color="black",fill="blue")+labs(y="No. of hotels")