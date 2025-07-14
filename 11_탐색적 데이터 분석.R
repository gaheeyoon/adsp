# 탐색적 데이터 분석(결측값, 이상값)

head(iris,3)
summary(iris)

# 결측값 생성
copy_iris<-iris
copy_iris[sample(1:150,30),1]<-NA # 30 개의 결측값 생성
dim(copy_iris)

# 단순 대치법
copy_iris<-copy_iris[complete.cases(copy_iris),]
dim(copy_iris)

# 평균 대치법
mean_value<-mean(copy_iris$Sepal.Length,na.rm=T)
copy_iris$Sepal.Length[is.na(copy_iris$Sepal.Length)]<-mean_value

# centralImputation을 활용한 중앙값 대치
install.packages('DMwR2')
library(DMwR2)

copy_iris<-centralImputation(copy_iris)

# 단순 확률 대치법
copy_iris<-knnImputation(copy_iris,k=10)

# 다중 대치법
install.packages('Amelia')
library(Amelia)
iris_imp<-amelia(copy_iris,m=3,cs='Species')
copy_iris$Sepal.Length<-iris_imp$imputations[[3]]$Sepal.Length

# (참고)결측값 시각화
missmap(copy_iris)
