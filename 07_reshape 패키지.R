# reshape 패키지

install.packages('reshape') # reshape가 설치 안될 경우 reshape2를 사용
library(reshape)

score<-data.frame(
  student_number = c(1,2,1,2),
  semester = c(1,1,2,2),
  math_score = c(60,90,70,90),
  english_score = c(80,70,40,60)
)
score


melted_score<-melt(score,id=c('student_number','semester'))
melted_score
# 학생별 과목의 평균점수를 알고싶은 경우
cast_score<-cast(melted_score,student_number ~ variable , mean)
cast_score
# 학기별 과목의 평균점수를 알고싶은 경우
cast_score<-cast(melted_score,student_number ~ semester , mean)
cast_score
# 학생별 최대점수를 알고싶은 경우
cast_score<-cast(melted_score,student_number ~ variable , max)
cast_score

cast(melted_score,student_number ~ semester , mean)
