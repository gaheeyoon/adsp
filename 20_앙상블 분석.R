# 앙상블 분석

# 데이터 분할
index<-sample(1:2,150,replace=T,prob=c(0.7,0.3))
train<-iris[index==1,]
test<-iris[index==2,]

# 배깅
install.packages('adabag')
library('adabag')
result<-bagging(data=train,Species~.)

# 첫번째 의사결정나무
plot(result$trees[[1]],margin=0.3)
text(result$trees[[1]])

# 100번재 의사결정나무
plot(result$trees[[100]],margin=0.3)
text(result$trees[[100]])

# 모형 평가
pred<-predict(result,newdata=test,type='class')
table(test$Species,pred$class)

# 부스팅
result<-boosting(data=train,Species~.,boos=T,mfinal=10)

# 첫번째 의사결정나무
plot(result$trees[[1]],margin=0.3)
text(result$trees[[1]])

# 10번재 의사결정나무
plot(result$trees[[10]],margin=0.3)
text(result$trees[[10]])

# 모형 평가
pred<-predict(result,newdata=test,type='class')
pred$confusion

# 랜덤포레스트
install.packages('randomForest')
library(randomForest)
result<-randomForest(data=train,Species~.,ntree=100)

# 랜덤포레스트는 트리 시각화를 지원하지 않음

# 모형 평가
pred<-predict(result,newdata=test,type='class')
table(test$Species,pred$class)

# 최근 아래처럼 함수가 수정됨
table(test$Species,pred)
