# Creating a data frame
srno<-c(1,2,3,4,5,6)
name<-c("Sachin","Rahul","Vikash","Virat","AB Devillers","MS Dhoni")
Score_1<-c(22,133,353,24,55,77)
Score_2<-c(33,55,77,66,77,88)
data<-data.frame(srno,name,Score_1,Score_2)

data$srno
# Data from 2nd row and 4th column 
data[2,4]

# Number of rows in the data
nrow(data)

# Number of column in the data
ncol(data)

# Data from 1st column
data[1,]
# Data from 2nd column
data[2,]
# Data from 3rd column
data[3,]
# Data from 2nd row
data[,2]
