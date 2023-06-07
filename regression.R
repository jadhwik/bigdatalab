x<-c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130)
y<-c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58)
relation<-lm(y~x)
relation
z<-data.frame(x=150)
predict(relation,z)
plot(x,y,col="red",main="height and weight regression",pch=16,abline(lm(y~x)),xlab="height",ylab="weight")


----------------------------------------------------------------


library(ggplot2)
df1=data.frame(
  height=c(141, 134, 178, 156, 108, 116, 119, 143, 162, 130),
  weight=c(62, 85, 56, 21, 47, 17, 76, 92, 62, 58),
  fit=c(0,0,0,0,0,1,1,1,1,1)
)
df1
model=glm(fit~height+weight,data=df1,family=binomial)
df2=data.frame(
  height=c(141),
  weight=c(50)
)
result=predict(model,newdata=df2,type="response")
result

ggplot(df1, aes(x=height, y=fit)) +
  geom_point(alpha=.5) +
  stat_smooth(method="glm", se=FALSE, method.args = list(family=binomial))

