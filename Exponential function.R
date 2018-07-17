x<-1:100
y<-1.1^x
z<-1.1*x
xyz_combined<-cbind(x,y,z)
xyz_combined_df<-data.frame(xyz_combined)

library(ggplot2)
graph3<-ggplot(data = xyz_combined_df)+geom_point(aes(x=x,y=y),col="red")+
  geom_point(aes(x=x,y=z),col="green")

plot(graph3)


a<-1.2^x
b<-1.3^x
c<-1.4^x
d<-1.5^x

abcd<-cbind(x,y,a,b,c,d)
abcd_df<-data.frame(abcd)

graph5<-ggplot(data = abcd_df)+geom_point(aes(x=x,y=y),col="red")+
  geom_point(aes(x=x,y=a),col="blue")+geom_point(aes(x=x,y=b),col="yellow")+
  geom_point(aes(x=x,y=c),col="green")+geom_point(aes(x=x,y=d),col="purple")
plot(graph5)

