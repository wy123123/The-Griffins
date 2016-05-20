library(dplyr)
library(ggplot2)
library(reshape2)
df <- data.frame(Character = c("Peter","Lois","Chris","Meg","Brain","Stewie"),Pants=NA,Shirt = NA,Neck=NA,Head=NA, Hair=NA)

df$Hair<-c(5,5,5,5,0,5)
df$Head<-c(20,20,20,20,20,20)
df$Neck<-c(0,0,0,0,5,0)
df$Shirt<-c(50,40,40,30,20,10)
df$Pants<-c(30,25,25,20,15,10)

df <- melt(df)
df$variable <- paste0(df$Character,"-",df$variable)
df$Character <- ordered(df$Character, levels=c("Peter","Lois","Chris","Meg","Brain","Stewie"))

ggplot(data = df,aes(x=Character,y=value,fill=variable))+geom_bar(stat = "identity")+
scale_fill_manual(values=c("white","white","red","white","white",
                           "yellow","#FFFDD0","white","black","blue",
                           "#B00d00","#FFFDD0","#FFFDD0","#a61919","#19a6a6",
                           "purple","#FFFDD0","white","blue","purple",
                           "black","#FFFDD0","#FFFDD0","#008c00","white",
                           "#FFFDD0","#FFFDD0","#FFFDD0","red","yellow",
                           rep("yellow",5)))+theme(legend.position="none",  
                                                   axis.title.x=element_blank(),  
                                                   axis.title.y=element_blank(),  
                                                   axis.text.x=element_blank(),  
                                                   axis.text.y=element_blank()) +
                            ggtitle("The Griffin Family")  


