x<-0:20
a<-10000*(1.1^x)
b<-10000*(1.2^x)
c<-10000*(1.3^x)
d<-10000*(1.4^x)
e<-10000*(1.5^x)
f<-10000*(1.6^x)
g<-10000*(1.15^x)

library(ggplot2)
alldata<-cbind(x,a,b,c,d,e,f,g)
alldata_df<-data.frame(alldata)



graph<-ggplot(data=alldata_df)+geom_point(aes(x=x,y=a),col="red")+
  geom_point(aes(x=x,y=b),col="blue")+geom_point(aes(x=x,y=c),col="green")+
  geom_point(aes(x=x,y=d),col="yellow")
plot(graph)

graph1<-ggplot(data=alldata_df)+geom_point(aes(x=x,y=a))+geom_point(aes(x=x,y=g))
plot(graph1)

graph2<-ggplot(data=alldata_df)+geom_area(aes(x=x,y=a),fill="yellow")+
  geom_area(aes(x=x,y=g),fill="green")
plot(graph2)
