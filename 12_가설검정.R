# T 검정

# 일표본 단측 T 검정
weights<-runif(10,49,52)
t.test(weights,mu=50,alternative = 'greater')

# 일표본 양측 T 검정
weights<-runif(100,40,100)
t.test(weights,mu=70,alternative = 'two.sided') 

# 이표본 단측 T 검정
salary_A<-runif(100,250,380)
salary_B<-runif(100,200,400)
t.test(salary_A,salary_B,alternative = 'less')

# 일표본 양측 T 검정
speed_K<-runif(100,30,40)
speed_L<-runif(100,25,35)
t.test(speed_K,speed_L,alternative = 'two.sided')

# 대응 표본 T 검정
before<-runif(100,60,80)
after<-runif<-before+rnorm(10,-3,2)
t.test(before,after,alternative = 'greater',paired = T)

# 일원분산분석
phone_speed<-runif(45,75,100)
telecom<-rep(c('A','B','C'),15)
phone_data<-data.frame(phone_speed,telecom)
result<-aov(data=phone_data,phone_speed~telecom)
summary(result)
