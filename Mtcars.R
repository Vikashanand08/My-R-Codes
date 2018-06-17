library(ggplot2)
library(corrplot)
# As factor defining
mtcars$cyl<-as.factor(mtcars$cyl)
mtcars$gear<-as.factor(mtcars$gear)

# Details of cars with different cylinders and gears
gg<-ggplot(data = mtcars,aes(x=cyl,fill=gear))+geom_bar()
gg

# Relationship between weight of the car and mileage
ggplot(data=mtcars,aes(x=wt,y=mpg))+geom_line(color="red")

# Relationship between weight of the car and milegae with details of cylinder
ggplot(data=mtcars,aes(x=wt,y=mpg))+geom_line(color="red")+facet_wrap(~cyl)

# Relationship between horsepower and mileage of the car
ggplot(data=mtcars,aes(x=hp,y=mpg))+geom_line(color="green",size=2)

