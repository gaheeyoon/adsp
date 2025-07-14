# 연관분석

# 데이터 생성
items<-c('chicken','coke','cider')
count<-sample(3,100,replace=T)
transactionId<-c()
transactionItem<-c()
for(i in 1:100){
  current_transaction<-sample(items,count[i])
  for(j in 1:length(current_transaction)){
    transactionId<-c(transactionId,i)
    transactionItem<-c(transactionItem,current_transaction[j])
  }
}

# 거리 데이터 생성
transaction<-data.frame(transactionId,transactionItem)
head(transaction,4)

# 패키지 호출
install.packages('arules')
library(arules)

# 데이터 전처리
transactionById<-split(transaction$transactionItem,transaction$transactionId)
transactionById_processed<-as(transactionById,'transactions')

# 연관분석 수행
result<-apriori(transactionById_processed,parameter=list(supp=0.2,conf=0.7))

# 결과 확인(연관분석은 inspect 함수를 통해 결과를 확인)
inspect(result)
