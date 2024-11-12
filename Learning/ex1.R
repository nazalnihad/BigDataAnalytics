foo<-list(1,2,3,4)
print(foo)
foo<-list(1:4)
print(foo)

nums<-c(1,2,3,4,5)
sq <-function(inp){
  return(sum(inp**2))
}

res<-sq(nums)
print(res)

for(i in 10:1){
  cat(i,"\n")
}

sign_<-function(num){
  x<-""
  if(num>0){
    x<-"positive"
  }
  else if(num<0){
    x<-"negative"
  }
  else{
    x<-"zeros"
  }
  return(x)
}

v<-sign_(0)
print(v)


mat<-matrix(runif(12),nrow=3,ncol=4)
print(mat[,2])

colors<-c("red","green","blue","black")
f<-factor(colors,levels=sort(unique(colors)))
print(f)
print(levels(f))

data("mtcars")
tab<-table(mtcars$cyl)
barplot(mtcars$cyl)
legend("topright",legend=row.names(tab))
