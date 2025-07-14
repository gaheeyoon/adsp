# 인공신경망(ANN)

# 데이터 분할
index<-sample(1:2,150,replace=T,prob=c(0.7,0.3))
train<-iris[index==1,]
test<-iris[index==2,]

# 모형 구축
install.packages('neuralnet')
library(neuralnet)
result<-neuralnet(data=train,Species~.,hidden=c(4,4),stepmax=1e7)

# 예측(각 범주에 속할 확률 값을 반환)
pred<-predict(result,newdata=test)

# 각 확률 값들에 대해서 최댓값을 갖는 명목형변수로 변환
predicted_class<-c()
for(i in 1:nrow(test)){
  loc<-which.max(pred[i,])
  if(loc==1){
    predicted_class<-c(predicted_class,'setosa')
  }else if(loc==2){
    predicted_class<-c(predicted_class,'versicolor')
  }else{
    predicted_class<-c(predicted_class,'verginica')
  }
}
# 오분류표
table(test$Species,predicted_class)

# 시각화
plot(result)
