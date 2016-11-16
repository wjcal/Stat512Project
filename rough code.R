dim(communities)
crime=read.table("C:")
attach(communities)
library(dplyr)

dat1=select(communities,-V1,-V2,-V3,-V4,-V5,-V31, -(V102:V118),-(V122:V127))
lm1=glm(V128~.,data=dat1)
summary(lm1)
table(is.na(dat1))
summary(lm1)$coeff[-1,4] < 0.05
