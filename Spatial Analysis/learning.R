name<-c("A","B","C","D")
score<-c(1231,13122,13213,13213)
data_1<-cbind(name,score)

data_1_df<-data.frame(data_1)
data_1_df$Age<-c(11,13,56,37)
data_1_df$State<-c("Jharkhand","Maharashtra","Jharkhand","Maharashtra")

new_state<-data_1_df[data_1_df$State=="Jharkhand",]
new_state$New_State<-c("New State")
old_state<-data_1_df[data_1_df$State!="Jharkhand",]
old_state$New_State<-c("Old State")

all_data<-rbind(new_state,old_state)

