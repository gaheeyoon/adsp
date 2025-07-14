# R 데이터 핸들링 및 제어문

m1<-matrix(c(1:6), nrow = 2)

# 데이터 이름 변경
colnames(m1)<-c('c1','c2','c3')
m1
rownames(m1)<-c('r1','r2')
m1

df1<-data.frame(x=c(1,2,3),y=c(4,5,6))
df1
colnames(df1)<-c('c1','c2')
df1
rownames(df1)<-c('r1','r2','r3')
df1

# 데이터 추출
v1<-c(3,6,9,12)
v1[2]

m1<-matrix(1:6,nrow=3)
m1[2,2]

colnames(m1)<-c('c1', 'c2')
m1[,'c1']

rownames(m1)<-c('r1','r2','r3')
m1['r3', 'c2']

v1<-c(1:6)
v2<-c(7:12)
df1<-data.frame(v1,v2)

df1$v1
df1$v2[3]

# 벡터 결합
v1<-c(1,2,3)
v2<-c(4,5,6)
rbind(v1,v2)
cbind(v1,v2)

# 벡터 결합(재사용 규칙 / 1,2가 다시 사용)
v1<-c(1,2,3)
v2<-c(4,5,6,7,8)
rbind(v1,v2)

# 반복문
data<-c(1:3)
for(i in data){
  print(i)
}

data<-c('a','b','c')
for(i in data){
  print(i)
}

i<-0
while(i<5){
  print(i) # start값 출력
  i<-i+1 # start 에 1을 더함
}

# 조건문
number<-5
if(number<5){
  print('number는 5보다 작다.')
}else if(number > 5){
  print('number는 5보다 크다.')
}else{
  print('number는 5와 같다.')
}

number<-3
if(number<5){
  print('number는 5보다 작다.')
}else if(number > 5){
  print('number는 5보다 크다.')
}else{
  print('number는 5와 같다.')
}

number<-7
if(number<5){
  print('number는 5보다 작다.')
}else if(number > 5){
  print('number는 5보다 크다.')
}else{
  print('number는 5와 같다.')
}

# 사용자 정의 함수
comparedTo5<-function(number){
  if(number<5){
    print('number는 5보다 작다.')
  }else if(number > 5){
    print('number는 5보다 크다.')
  }else{
    print('number는 5와 같다.')
  }
}
comparedTo5(10)

comparedTo5(3)

comparedTo5(5)
