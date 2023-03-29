
students=data.frame(
  name=c('alen','arun','amal'),
  age=c(18,19,20),
  class=c('s2ds','s5ds','s6ds'),
  mark1=c(50,60,70),
  mark2=c(70,30,40)
)
students[,c('total')]=students$mark1+students$mark2
print(students)
mt=mean(students$total)
md=median(students$total)
mode=function(){
  return(sort(table(students$total))[1])
}
qt=quantile(students$total,probs=c(0,0.25,0.5,0.75,1))
print(paste('mean =',mt))
print(paste('median=',md))
print('mode is:')
mode()
print(var(students$total))
print(sd(students$total))
summary(students$total)
print(qt)

boxplot(students$age,students$total,names=c("Age","Total"))


