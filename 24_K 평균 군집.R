# K 평균 군집

cal<-c(52,160,89,57,34,32,30,69)
car<-c(112.4,8.5,22.8,14.5,8.2,7.7,7.6,18.1)
fat<-c(0.2,14.7,1.3,0.7,0.2,0.3,0.2,0.2)
pro<-c(0.3,2.0,1.1,0.3,0.8,0.7,0.6,0.7)
fib<-c(2.4,6.7,2.6,2.4,0.9,2.0,0.4,0.9)
sug<-c(10.4,0.7,12.2,9.9,7.9,4.7,6.2,15.5)

fruits<-data.frame(cal,car,fat,pro,fib,sug)
rownames(fruits)<-c('apple','avocado','banana','blueberry','melon','watermelon','strawberry','grape')

# 군집의 중심과 개체 사이의 거리를 구하는데 단위의 문제가 발생할 것으로 예상된다면
# 표준화를 통해 단위 문제를 해결할 수 도 있다.
# fruits <- as.data.frame( scale(fruits, center = T, scale = T))

# 초기값(K, 군집의 수)는 3으로 설정하고 군집수행
result <- kmeans( fruits, centers = 3)

# 각 군집의 중심
result$centers
# 2번 군집은 1번과 3번 군집에 비해 탄수화물(car)이 많은 집단인 것을 알 수 있다.

# 원본 데이터에 군집을 추가
fruits$cluster <- result$cluster

head(fruits)


# 어느 과일이 어느 군집에 속하는지 확인 가능하다.
# 데이터가 2차원일 경우 시각화로도 표현이 가능하다.
# 군집분석을 위한 내장 데이터인 Nclus를 활용
install.packages("flexclust")
library(flexclust)
data(Nclus)

result<-kmeans(Nclus, 3)

plot(Nclus, col = result$cluster , xlim = c(-7,10) , ylim = c(-4, 10), xlab = '', ylab = '')
#군집에 중심을 표시
par(new =T)
plot(result$centers, col = result$cluster , pch =3 , cex = 3 , xlim = c(-7,10) , ylim = c(-4, 10), xlab = '', ylab = '')
