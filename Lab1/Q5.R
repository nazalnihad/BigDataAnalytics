series_sum<-function(n){
  sum<-0
  i<-1
  
  for ( j in 1:n){
    next_term<-i*(j/(2*j-1))
    sum<-sum+next_term
    i<- -i
  }
  return(sum)
}

cat("Enter n terms : ")
n<-as.integer(readline())

if(is.na(n) || n<=0){
  cat("entr valid input : ")
}else{
  sum<-series_sum(n)
  cat("sum of series upto ",n," terms is : ",sum)
}