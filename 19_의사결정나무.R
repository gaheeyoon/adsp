# 의사결정나무

# 데이터 분할
index<-sample(1:2,150,replace=T,prob=c(0.7,0.3))
train<-iris[index==1,]
test<-iris[index==2,]

# 의사결정나무 구축
install.packages('rpart')
library(rpart)
result<-rpart(data=train,Species~.)

# 시각화
plot(result,margin=0.3)
text(result)

# 모형 평가
pred<-predict(result,newdata=test,type='class')
table(test$Species,pred)
