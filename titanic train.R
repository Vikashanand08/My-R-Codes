library(ggplot2)
train<-read.csv(file = "train.csv")

# Set up factors
train$Survived<-as.factor(train$Survived)
train$Pclass<-as.factor(train$Pclass)
train$Sex<-as.factor(train$Sex)
train$Embarked<-as.factor(train$Embarked)


# Number of male and female passanger
ggplot(data=train,aes(x=Sex))+geom_bar()+labs(y="Number of passanger")


# Survival against gender
ggplot(data=train,aes(x=Sex,fill=Survived))+geom_bar()+
  labs(y="Number of passanger")

# Survival against different classess of passanger
ggplot(data=train,aes(x=Pclass,fill=Survived))+geom_bar()+
  labs(y="Number of passanger")

# Survival of male and female passangers of different passanger classess
ggplot(data=train,aes(x=Pclass,fill=Survived))+geom_bar()+
  labs(y="Number of passanger")+facet_wrap(~Sex)

# Survival of male and female passangers of different passanger classess
ggplot(data=train,aes(x=Sex,fill=Survived))+geom_bar()+
  labs(y="Number of passanger")+facet_wrap(~Pclass)

# Count of passangeres boarding from different stations
ggplot(data=train,aes(x=Embarked))+geom_bar()

# Survivality of passangers boarding from different setLoadActions
ggplot(data=train,aes(x=Embarked,fill=Survived))+geom_bar()

# Age distribution of passangers and survival
ggplot(data=train,aes(x=Age,fill=Survived))+geom_histogram(binwidth = 10)

# Age distribution of passangers and survival with details of passanger classess
ggplot(data=train,aes(x=Age,fill=Survived))+
  geom_histogram(binwidth = 10)+facet_wrap(~Pclass)

# Survivality of passangers boarding from different setLoadActions with flip axes
ggplot(data=train,aes(x=Embarked,fill=Survived))+geom_bar()+coord_flip()

# Age distribution of passangers and survival with details of passanger classess with flip axes
ggplot(data=train,aes(x=Age,fill=Survived))+
  geom_histogram(binwidth = 10)+facet_wrap(~Pclass)+coord_flip()

# Survival of male and female passangers of different passanger classess with coord flip
ggplot(data=train,aes(x=Pclass,fill=Survived))+geom_bar()+
  labs(y="Number of passanger")+facet_wrap(~Sex)+coord_flip()
