# week4
library(readr)
X201801 <- read_csv("201801_data.csv") 
X201802 <- read_csv("201802_data.csv") 
X201803 <- read_csv("201803_data.csv") 
X201804 <- read_csv("201804_data.csv") 
X201805 <- read_csv("201805_data.csv") 
X201806 <- read_csv("201806_data.csv") 
X201807 <- read_csv("201807_data.csv") 
X201808 <- read_csv("201808_data.csv") 
X201809 <- read_csv("201809_data.csv") 
X201810 <- read_csv("201810_data.csv") 
X201811 <- read_csv("201811_data.csv") 
X201812 <- read_csv("201812_data.csv") 
X201901 <- read_csv("201901_data.csv") 
#所以的2018年7月到2019年1月
library(dplyr)
library(tm)
library(NLP)
all7=rbind(X201807,X201808,X201809,X201810,X201811,X201812,X201901)


filter(all7,grepl("柯文哲",all7$Message)==T)%>%count()
filter(all7,grepl("姚文智",all7$Message)==T)%>%count() 
filter(all7,grepl("丁守中",all7$Message)==T)%>%count() 
filter(all7,grepl("吳蕚洋",all7$Message)==T)%>%count() 

kwz=filter(all7,grepl("柯文哲",all7$Message)==T)
ywz=filter(all7,grepl("姚文智",all7$Message)==T)
nsz=filter(all7,grepl("丁守中",all7$Message)==T)
wey=filter(all7,grepl("吳蕚洋",all7$Message)==T)
#提到柯文哲like
kwz$Date=as.POSIXct(kwz$Date,format="%Y/%m/%d %H:%M:%S")
plot(kwz$Date,kwz$LIKE_COUNT,type = "l")
#提到姚文智留言
ywz$Date=as.POSIXct(ywz$Date,format="%Y/%m/%d %H:%M:%S")
plot(ywz$Date,ywz$Comment_Count,type = "l")
#提到丁守中like
nsz$Date=as.POSIXct(nsz$Date,format="%Y/%m/%d %H:%M:%S")
plot(nsz$Date,nsz$LIKE_COUNT,type = "l")
#提到吳蕚洋like
wey$Date=as.POSIXct(wey$Date,format="%Y/%m/%d %H:%M:%S")
plot(wey$Date,wey$LIKE_COUNT,type = "l")

