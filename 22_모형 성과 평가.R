# 모형 성과 평가(의사결정나무 결과를 활용)

# 의사결정나무
# 이진분류를 위한 데이터 변화
iris_bin1<-subset(iris,Species=='setosa'|Species=='versicolor')
iris_bin1$Species<-ifelse(iris_bin1$Species=='setosa',1,0) # setosa는 1, 아니면 0

# 100% 분류를 방지하기 위해 Sepal.Length 와 Sepal.Width만을 활용
iris_bin1<-iris_bin1[,c(1,2,5)]

# 데이터 분할
index<-sample(1:2,nrow(iris_bin1),replace=T,prob=c(0.7,0.3))
train<-iris_bin1[index==1,]
test<-iris_bin1[index==2,]

# 의사결정나무 구축
install.packages('rpart')
library(rpart)
result<-rpart(data=train,Species~.)

# test 예측
pred<-predict(result,newdata=test)
test$pred<-pred

# ROC 커브
install.packages('Epi')
library(Epi)
ROC(form=Species~pred,data=test,plot='ROC')

# 향상도 곡선
install.packages('ROCR')
library(ROCR)
# neuralnet 패키지가 호출되어 있다면 detach(prediction)으로 에러를 방지
lift_value<-prediction(test$pred,test$Species)
plot(performance(lift_value,'lift','rpp'))

abline( v = 0.4, lty = 2, col = 'blue')
abline( v = 0.58, lty = 2, col = 'blue')


