# 혼합 분포 군집

install.packages('mixtools')
library(mixtools)

# 데이터 확인
waiting<-faithful$waiting
hist(waiting)

# 군집화 수행
result<-normalmixEM(waiting)

# 군집화 결과
result$lambda
result$mu
result$sigma


# 시각화(엔터 실행으로써 다음 시각화 결과 확인)
plot(result,density=T)
