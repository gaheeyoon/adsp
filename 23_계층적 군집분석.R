# 데이터 생성
x = c(2,1,6,3,3)
y = c(1,2,4,3,1)
data = data.frame(x,y)

# 데이터 행에 이름 할당하기
rownames(data) <- c('A','B','C','D','E')

# 거리 행렬 데이터 생성
# euclidean은 유클리디안 거리를 의미하며, 그 외에 manhattan, minkowski 등이 있다.
# 기본값은 euclidean이므로 method = 'euclidean'을 생략해도 같은 결과를 출력한다.
dist_data <- dist(data ,method='euclidean')

# 거리행렬 데이터 살펴보기
print(dist_data)

# 군집분석 수행
# single은 최단연결법을 의미하며, 그 외에 complete(최장), average(평균) 등이 있다.
# 기본값은 method='complete'이다.
hclust_data <- hclust(dist_data, method = 'single')

# 결과 시각화하기
plot(hclust_data)

# 만약 Height 값을 1.7로 설정한다면
abline(h=1.7)
