# 자기 조직화 지도

cal<-c(52,160,89,57,34,32,30,69)
car<-c(112.4,8.5,22.8,14.5,8.2,7.7,7.6,18.1)
fat<-c(0.2,14.7,1.3,0.7,0.2,0.3,0.2,0.2)
pro<-c(0.3,2.0,1.1,0.3,0.8,0.7,0.6,0.7)
fib<-c(2.4,6.7,2.6,2.4,0.9,2.0,0.4,0.9)
sug<-c(10.4,0.7,12.2,9.9,7.9,4.7,6.2,15.5)

fruits<-data.frame(cal,car,fat,pro,fib,sug)
rownames(fruits)<-c('apple','avocado','banana','blueberry','melon','watermelon','strawberry','grape')

install.packages('kohonen')
library(kohonen)

# 데이터 표준화 수행
fruits_scaled<-scale(fruits,center=T, scale = T)

# 군집화 수행
result<-som(fruits_scaled,grid=somgrid(3,1))

# 1X2 시각화 표현
par(mfrow=c(1,2))
plot(result)
plot(result,type='mapping',labels=rownames(fruits))
