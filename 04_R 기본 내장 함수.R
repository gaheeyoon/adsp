# R 기본 내장 함수

# 도움말
help(paste)
?paste

# 문자열 결합
paste('This is','a pen')

# 수열 생성
seq(1,10,by=2)

seq(1,10,length=5)

# 반복
rep(1, 5)

# 변수 삭제
a<-1
a
rm(a)
a

# 변수 리스트
ls()

# 출력
print(10)

#통계함수
v1<-c(1:9)
# 합계
sum(v1)

# 평균
mean(v1)

# 중앙값
median(v1)

# 표본 분산
var(v1)

# 표본 표준편차
sd(v1)

# 최댓값
max(v1)

# 최솟값
min(v1)

# 최솟값, 최댓값
range(v1)

# 요약값
summary(v1)

# 첨도, 왜도 라이브러리 설치 및 호출
install.packages("fBasics")
library(fBasics)

# 왜도
skewness(v1)

# 첨도
kurtosis(v1)
