check_prime<-function(n){
  if(n==1){
    return(FALSE)
  }
  
  if(n==2){
    return(TRUE)
  }
  
  for (i in 2:(n/2)){
    if((n%%i)==0){
      return(FALSE)
    }
  }
  return(TRUE)
}

check_prime_range<-function(lower,upper){
  for (i in lower:upper){
    if(check_prime(i)){
      cat(i,"\n")
    }
  }
}

number<-as.integer(readline("enter number to check prime : "))

if (is.na(number)) {
  cat("Invalid input. Please enter a valid integer.\n")
} else {
  if (check_prime(number)) {
    cat(number, "is a prime number.\n")
  } else {
    cat(number, "is not a prime number.\n")
  }
}

lower<-as.integer(readline("Enter the lower limit : "))
upper<-as.integer(readline("Enter the upper limit : "))

if (is.na(lower) || is.na(upper) || lower > upper) {
  cat("Invalid range input. Please enter valid integers with lower <= upper.\n")
} else {
  cat("Prime numbers in the given range:\n")
  check_prime_range(lower, upper)
}