
# Learning dplyr
library(dplyr)
library(hflights)

# Converting flights data as data frame
flights<-tbl_df(hflights)

# Printing 10 rows of flights
print(flights)
print(flights,n=15)

# Flights on 1st January
flights_1st_January<-flights[flights$Month==1 & flights$DayofMonth==1,]

flights_1st_January<-filter(flights,Month==1,DayofMonth==1)

# Flights from Unique Carrier AA and XE
flights_AA_XE<-filter(flights,UniqueCarrier %in% c("AA","XE"))

# Selecting columns
select_columns<-select(flights,FlightNum,AirTime)

# Seelct unique carriers and departure delays more than 60
uniquecarriers_depDelays<-select(flights,UniqueCarrier,DepDelay)
depDelaysof60<-filter(uniquecarriers_depDelays,DepDelay>60)

# Chaining Method
flights %>%
  select(UniqueCarrier,DepDelay) %>%
  filter(DepDelay>60)


# Arrange DepDelays in ascending and descending order
#Ascending Order
flights %>%
  select(UniqueCarrier,DepDelay)%>%
  filter(DepDelay>60)%>%
  arrange(DepDelay)
# Descending order
flights %>%
  select(UniqueCarrier,DepDelay)%>%
  filter(DepDelay>60)%>%
  arrange(desc(DepDelay))


# Mutate Command
flights%>%
  select(Distance,AirTime)%>%
  mutate(speed=Distance/AirTime)

speed<-flights%>%
  select(Distance,AirTime)%>%
  mutate(speed1=Distance/AirTime*60)


# Average delays
flights %>%
  group_by(Dest)%>%
  summarise(average_delay=mean(ArrDelay,na.rm = TRUE))

# For Each Carrier calculate the percentage of flights cancelled
average_delays<-flights %>%
  group_by(UniqueCarrier)%>%
  summarise_each(funs(mean),Cancelled,Diverted)







