library(ggplot2)
x=c(1,3,4,5,6,7)
y=c(3,6,7,8,4,5)

k=3
data=c(x,y)
km<-kmeans(data,k)
km
plot(data,col=km$cluster)
points(km$centres, col='blue',pch=4)

