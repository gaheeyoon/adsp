# 회귀분석

# 단순선형회귀분석
x<-c(1,1.4,1.6,2,2.2,2.4,3,3.3,3.6)
y<-c(15,13,13,12,11,10.5,10,9,8)

result<-lm(y~x)
summary(result)

# 회귀분석 분산분석표
anova(result)

# 다중선형 회귀분석
yard<-c(31,31,27,39,30,32,28,23,28,35)
area<-c(58,51,47,35,48,42,43,56,41,41)
park<-c(1,1,5,5,2,4,5,1,1,3)
dist<-c(492,426,400,125,443,412,201,362,192,423)
popul<-c(4412,2061,4407,1933,4029,4180,3444,1683,3020,4459)
price<-c(12631,12084,12220,15649,11486,12276,15527,12666,13180,10169)

result<-lm(price~yard+area+park+dist+popul)
summary(result)
anova(result)

x<-1:5
y<-x+rnorm(5)

result<-lm(y~x)
summary(result)
anova(result)
# 최적 회귀 방정식(전진 선택법)
result<-step(lm(price ~ 1), scope=list(lower=~1,upper = ~yard+area+park+dist+popul),direction = 'forward')
summary(result)

# 최적 회귀 방정식(후진 제거법)
result<-step(lm(price ~yard+area+park+dist+popul),scope=list(lower=~1,upper= ~yard+area+park+dist+popul),direction='backward')
summary(result)

# 최적 회귀 방정식(단계별 선택법)
result<-step(lm(price ~ 1), scope=list(lower=~1,upper = ~yard+area+park+dist+popul),direction = 'both')
summary(result)
