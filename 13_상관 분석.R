# 상관분석

# 피어슨 상관계수
x<-c(1,2,3,4,5)
y<-c(3,6,4,9,8)
cor(x,y,method='pearson') # cor(x,y) 와 같다.

# 스피어만 상관계수
x<-c(1,2,3,4,5)
y<-c(3,6,4,9,8)
cor(x,y,method='spearman')

# 상관분석
time<-c(8,6,7,3,2,4,2,7,2,3)
score<-c(33,22,18,6,23,10,9,30,11,13)
cor.test(time,score)
