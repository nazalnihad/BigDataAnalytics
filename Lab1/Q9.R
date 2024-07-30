rle<-function(s){
  encoded<-""
  n<-nchar(s)
  
  i<-1
  while(i<=n){
    current<-substr(s,i,i)
    flag<-1
    
    while((i+flag<=n) && (substr(s,i+flag,i+flag)==current)){
      flag<-flag+1
    }
    encoded<-paste0(encoded,current,flag)
    i<-i+flag
  }
  return(encoded)
}

cat("enter a string to compress: ")
s <- readline()

compressed <- rle(s)

cat("Compressed string:", compressed, "\n")