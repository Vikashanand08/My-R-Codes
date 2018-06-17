# Correlation Analysis
library(corrplot)

# Correlation using Circle
vikash<-cor(x=mtcars)
corrplot(vikash,method = "circle")

# Correlation using pie
corrplot(vikash,method="pie")

# Correlation using color
corrplot(vikash,method = "color")

# Value of Correlation coeffecient
corrplot(vikash,method="number")

# Upper correlation matrix
corrplot(vikash,type = "upper")

# lower correlation matrix
corrplot(vikash,type = "lower")

# Upper correlation matrix
corrplot(vikash,type = "upper",order = "hclust")