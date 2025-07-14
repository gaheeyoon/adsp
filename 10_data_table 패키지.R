# 데이터 테이블 패키지

install.packages('data.table') 
library(data.table)

year<-rep(2012:2015,each=12000000)
month<-rep(rep(1:12,each=1000000),4)
value<-runif(48000000)

df1<-data.frame(year,month,value)
dt1<-as.data.table(df1)

# 데이터 프레임 검색 시간 측정
system.time(df1[df1$year==2012,])
system.time(dt1[dt1$year==2012,])

# 특정 컬럼을 키값으로 설정
setkey(dt1,year)

# 키값에 대하여 J표현식 사용하여 검색 시간 측정
system.time(dt1[J(2012)])
