reverse_list<-function(n){
  if(length(n)<=1){
    return(n)
  }
  else{
    reversed<-list()
    len<-length(n)
    for(i in len:1){
      reversed<-c(reversed,n[i])
    }
  }
  return(reversed)
}

input<- readline("enter items separated by spaces: ")
items<-strsplit(input," ")[[1]]
listed<-as.list(items)
reversed_list <- reverse_list(listed)

for (item in reversed_list) {
  cat(item, "\n")
}