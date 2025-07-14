# plyr 패키지

install.packages('plyr') 
library(plyr)

score<-data.frame(
  class = c('A','A','B','B'),
  math = c(50,70,60,90),
  english = c(70,80,60,80)
)
score
# summarise는 데이터 요약

ddply(score,"class",summarise,math_avg=mean(math),eng_avg=mean(english))
# transform은 기존 데이터에 추가
ddply(score,"class",transform,math_avg=mean(math),eng_avg=mean(english))

data<-data.frame(
  year=rep(2012:2013,each=4),
  month = c(1,1,2,2,1,1,2,2),
  value = c(3,5,7,9,1,5,4,6)
)
data

# 기준 변수를 2개 이상 설정 가능
ddply(data,c('year','month'),summarise,value_avg = mean(value))

# 사용자 함수를 정의 가능
ddply(data,c('year','month'),function(x){
  value_avg = mean(x$value)
  value_sd = sd(x$value)
  data.frame(avg_sd = value_avg/value_sd)
})
