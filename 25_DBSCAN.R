# DBSCAN

install.packages('fpc')
library(fpc)

# 데이터 생성
data<-data.frame(
  x=c(sample(1:10,15,replace=T),sample(20:30,10,replace=T)),
  y=c(sample(1:10,15,replace=T),sample(20:30,10,replace=T))
)

# 시각화
plot(data)

# 군집화 수행
dbscan_result<-dbscan(data,eps=5,MinPts = 3)

# 그룹화 결과 확인
plot(data,col=dbscan_result$cluster)
