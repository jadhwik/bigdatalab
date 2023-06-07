x=c(2,4,5,7,8,6)
me=mean(x)
sd=sd(x)
me
sd
dnorm(x,mean=me,sd=sd)
plot(dnorm,-3,3,main="normal distribution")

print("-----------------------------------------")

x<-c(3,4,5,2,6,7)
y<-c(5,6,7,8,10,2)
var(x,y)

print("covariance using different methods")
cov(x,y,method="pearson")
cov(x,y,method='kendal')
cov(x,y,method="spearman")

print("correlation using different attributes")
cor(x,y,method="pearson")
cor(x,y,method="kendal")
cor(x,y,method="spearman")

