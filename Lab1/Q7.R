mod_fib<-function(n){
 if(n<=0){
   return(c())
 }
  else if(n == 1){
    return(c(0))
  }
  else if(n==2){
    return(c(0,1))
  }
  
  nums<-c(0,1,1)
  for (i in 4:n){
    num_next<-nums[i-1]+nums[i-2]+nums[i-3]
    nums<-c(nums,num_next)
  }
  
  return(nums)
}

cat("Enter the number of terms: ")
n <- as.integer(readline())

if (is.na(n) || n <= 0) {
  cat("invalid input, enter a positive integer.\n")
} else {
  nums <- mod_fib(n)
  
  cat(" modified Fibonacci series with", n, "terms is:\n", paste(nums, collapse = ", "), "\n")
}