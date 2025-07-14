# R 데이터 구조

# 벡터(1차원 데이터)
v4<-c(3,TRUE,FALSE)
v4
v5<-c('a',1,TRUE)
v5
v1<-c(1:6)
v1


# 행렬(2차원 데이터 - 차원을 가진 벡터)
m1<-matrix(1:6,nrow=2)
m1
m2<-matrix(1:6,ncol=2)
m2
m3<-matrix(1:6,nrow=2,byrow=TRUE)
m3
v1<-c(1:6)
v1
dim(v1)<-c(2,3)
v1

# 배열(3차원 데이터 - 차원을 가진 벡터)
a1<-array(1:12,dim=c(2,3,2))
a1
a2<-1:12
a2
dim(a2)<-c(2,3,2)
a2

# 리스트
l1<-list()
l1[[1]]<-5
l1[[2]]<-c(1:6)
l1[[3]]<-matrix(1:6,nrow=2)
l1[[4]]<-array(1:12,dim=c(2,3,2))
l1

# 데이터 프레임(2차원 구조 - 벡터들의 결합)
v1<-c(1:6)
v2<-c('a','b','c','d','e','f')
v3<-c(T,F,T,T,F,F)
df1<-data.frame(v1,v2,v3)
df1
