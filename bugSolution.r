```r
# Efficient solution using data.table
library(data.table)

df <- rbindlist(lapply(1:3, function(i) data.frame(col1 = i, col2 = i * 2)))

print(df)

#Efficient solution using pre-allocation

df <- data.frame(matrix(nrow = 3, ncol = 2))
colnames(df)<-c("col1", "col2")
for(i in 1:3){
  df[i,1]<-i
  df[i,2]<-i*2
}
print(df)
```