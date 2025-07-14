# sqldf 패키지

install.packages('sqldf') 
library(sqldf)

score<-data.frame(
  student_number = c(1,2,1,2),
  semester = c(1,1,2,2),
  math_score = c(60,90,70,90),
  english_score = c(80,70,40,60)
)
score

sqldf('select * from score')
sqldf('select * from score where student_number = 1')
sqldf('select avg(math_score) as math_score, avg(english_score) as english_score from score group by student_number')
