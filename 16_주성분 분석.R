# 주성분 분석

cal<-c(52,160,89,57,34,32,30,69)
car<-c(112.4,8.5,22.8,14.5,8.2,7.7,7.6,18.1)
fat<-c(0.2,14.7,1.3,0.7,0.2,0.3,0.2,0.2)
pro<-c(0.3,2.0,1.1,0.3,0.8,0.7,0.6,0.7)
fib<-c(2.4,6.7,2.6,2.4,0.9,2.0,0.4,0.9)
sug<-c(10.4,0.7,12.2,9.9,7.9,4.7,6.2,15.5)

fruits<-data.frame(cal,car,fat,pro,fib,sug)
rownames(fruits)<-c('apple','avocado','banana','blueberry','melon','watermelon','strawberry','grape')

result<-prcomp(fruits,center=T,scale.=T)
summary(result)

plot(result,type='l')

biplot(result)
