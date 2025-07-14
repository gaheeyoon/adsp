# 로지스틱 회귀분석

# 이항분류를 위해 두 가지 목표변수를 선택
iris_bin1<-subset(iris,Species=='setosa'|Species=='versicolor')

str(iris_bin1)

# Species ~ .은 Species를 종속변수, 나머지 변수를 독립변수로 활용하겠다는 의미
# family = 'binomial'은 glm을 로지스틱 회귀분석으로 사용하겠다는 의미
result<-glm(data=iris_bin1,Species~.,family='binomial')

# '알고리즘이 수렴하지 않았습니다.' 경고 문구는 control 값으로 조정 가능
result<-glm(data=iris_bin1,Species~.,family='binomial', control = list(maxit = 50))
# '적합된 확률 값들이 0 또는 1 입니다.' 경고 문구는 100%로 분류 가능을 의미

# Petal.Length와 Petal.Width에 의해 100% 분류되는 모습 확인
pairs(iris_bin1,col=iris_bin1$Species)
# 산점도에서 볼 수 있듯이 'setosa'와 'versicolor'는 Petal.Length와 Petal.Width에 의하여 완벽하게 분류될 수 있다.
# 따라서 Petal.Length와 Petal.Width가 독립변수로 포함되어 Species를 예측하고자 한다면 경고 문구 '적합된 확률 값들이 0 또는 1입니다'를 계속해서 출력할 것이다.

# Petal.Width를 독립변수로 활용
result<-glm(data=iris_bin1,Species~Petal.Width,family='binomial', control = list(maxit = 50))

# Petal.Length를 독립변수로 활용
result<-glm(data=iris_bin1,Species~Petal.Length,family='binomial', control = list(maxit = 50))

# Petal.Width도 Petal.Length가 아닌 Sepal.Length를 독립변수로 활용
result<-glm(data=iris_bin1,Species~Sepal.Length,family='binomial')

summary(result)

# p-value 계산
1-pchisq(summary(result)$null.deviance,df=99)
