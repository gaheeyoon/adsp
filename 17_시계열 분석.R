# 주성분 분석

rate<-c(1072,1081,1090,1065,1087,1085,1130,1130,1122,1122,1144,1121,1131,1129,1137,1146,1176,1194,1174,1200,1224,1213,1172,1197)

# 정상성(일정한 평균)
plot(rate,type='l')
rate_diff<-diff(rate,lag=1)
plot(rate_diff,type='l')

# 정상성(일정한 분산)
plot(UKgas)
UKgas_log<-log(UKgas)
plot(UKgas_log)

# 정상성(시차에 의한 공분산)
data<-rnorm(100)
diff<-4
x<-1:(100-diff)
y<-x+diff
plot(data[x],data[y])
cov(data[x],data[y])

# 자기회귀모형
rate_ts<-ts(rate)
rate_ts_diff2<-diff(rate_ts,differences=2)
pacf(rate_ts_diff2)

# 이동평균모형
rate_ts<-ts(rate)
acf(rate_ts)

install.packages('forecast')
library(forecast)
# 자기회귀누적이동평균 모형
rate_ts<-ts(rate)
auto.arima(rate_ts)

rate_ts_diff1<-diff(rate_ts,differences=1)
acf(rate_ts_diff1)
pacf(rate_ts_diff1)
