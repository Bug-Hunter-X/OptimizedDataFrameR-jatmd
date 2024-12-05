```r
# This code attempts to use a loop to populate a data frame, but it doesn't work as intended.

df <- data.frame(matrix(ncol = 2, nrow = 0))
colnames(df) <- c("col1", "col2")

for (i in 1:3) {
  new_row <- data.frame(col1 = i, col2 = i * 2)
  df <- rbind(df, new_row)
}

print(df)
```