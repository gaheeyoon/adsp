# R 기타 함수

# 숫자 연산
sqrt(25)
abs(-3)
exp(2)
log(10)
log2(8)
log10(100)
pi
round(3.141592,3)
ceiling(3.141592)
floor(3.141592)

# 문자 연산
data<-'This is a pen'
tolower(data)
toupper(data)
nchar(data)
substr(data,9,13)
strsplit(data,'is')
grepl('pen',data)
gsub('pen','banana',data)

# 행렬 연산
m1<-matrix(1:4,nrow=2)
m2<-matrix(3:6,ncol=2)
t(m1) # 행렬 전치
diag(m1) # 대각 성분
m1%*%m2 # 행렬 곱셈

# 벡터 연산
x<-c(3,7,5,9,11)
y<-c(1,2,3,6,7)
length(x)
paste(x,y)
cov(x,y)
cor(x,y)
table(x)
order(x)

# 데이터 탐색
x<-c(1:12)
# 기본값은 6이지만 원하는 개수만큼 데이터를 탐색한다.
head(x, 5)
tail(x,5)
quantile(x)

# 데이터 전처리
df1<-data.frame(x=c(1,1,1,2,2),y=c(2,3,4,3,3))
df2<-data.frame(x=c(1,2,3,4),z=c(5,6,7,8))
subset(df1,x==1)
merge(df1,df2,by=c('x'))
apply(df1,1,sum) # 각 행의 합계
apply(df1,2,sum) # 각 열의 합계

# 샘플 추출
sample(1:10,3) # 1부터 10에서 비복원 3개 추출
sample(1:10,100,replace=T) # 1부터 10에서 복원 100개 추출
runif(10) # 0과 1사이에서 10개를 추출
runif(10,3,5) # 3과 5 사이에서 10개를 추출
rnorm(10) # 평균0, 표준편차 1인 정규분포에서 10개 추출
rnorm(10,3,5) # 평균3, 표준편차 5인 정규분포에서 10개 추출
