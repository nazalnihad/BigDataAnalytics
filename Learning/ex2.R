x<-c(NA,3,4,NA,NA)
print(x)
na.omit(x)
na.exclude(x)
print(x)
dat<-data.frame(
  marks1 = c(NA,22,NA,49,75),
  marks2 = c(81,14,NA,61,12),
  marks3 = c(78.5,19.325,NA,28,48.002)
)
print(dat)
summary(dat)
dat$marks1[is.na(dat$marks1)]<-mean(dat$marks1,na.rm=TRUE)
dat$marks2[is.na(dat$marks2)]<-mean(dat$marks2,na.rm=TRUE)
dat$marks3[is.na(dat$marks3)]<-mean(dat$marks3,na.rm=TRUE)
print(dat)
summary(dat)

install.packages("Hmisc")
library(Hmisc)

data<-data.frame(
  marks1 = c(NA,22,NA,49,75),
  marks2 = c(81,14,NA,61,12),
  marks3 = c(78.5,19.325,NA,28,48.002)
)
print(data)

data$marks1<-impute(data$marks1,median,na.rm=TRUE)
data$marks2<-impute(data$marks2,median,na.rm=TRUE)
data$marks3<-impute(data$marks3,median,na.rm=TRUE)
print(data)

da<-rnorm(500)
data[1:10]<-c(46,9,15,-90,42,50,-82,74,61,-32)
boxplot(da)
