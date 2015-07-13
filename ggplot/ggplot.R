install.packages("ggplot2")
library("ggplot2")

data <- read.csv("C:/Users/insu/Desktop/DDS_Datasets.csv")

ggplot(data,aes(x=finedust, y=greenbelt, group=finedust, colour=finedust))+geom_point(size=2, shape=15)
