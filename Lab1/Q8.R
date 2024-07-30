check_palindrome<-function(s){
  changed_s<-tolower(gsub("[^a-zA-Z0-9]","",s))
  string_length<-nchar(changed_s)
  rev_s <- paste(rev(strsplit(changed_s,NULL)[[1]]),collapse="")
  return(changed_s==rev_s)
}

cat("enter a string to check : ")
input <- readline()

if (check_palindrome(input)) {
  cat(input, "is a palindrome.\n")
} else {
  cat(input, "is not a palindrome.\n")
}