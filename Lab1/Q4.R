generate<-function(pass_length){
  upper<-unlist(strsplit("ABCDEFGHIJKLMNOPQRSTUVWXYZ",split =""))
  lower<-unlist(strsplit(tolower("ABCDEFGHIJKLMNOPQRSTUVWXYZ"),split =""))
  nums<-unlist(strsplit("1234567890",split=""))
  special_chars<-unlist(strsplit("!@#$%^&*()-_=+{}:;[]<>,.?",split=""))
  
  if(pass_length<4){
    cat("make sure password length is greater than 4")
    return(NA)
  }
  all<-c(upper,lower,nums,special_chars)
  password<-c(
    sample(upper,1),
    sample(lower,1),
    sample(nums,1),
    sample(special_chars,1)
  )
  len<-pass_length-4
  password<-c(password,sample(all,len,replace = TRUE))
  password<-sample(password)
  password<-paste(password,collapse = "")
  return(password)
}

cat("Enter password length : ")
password_length<-as.numeric(readline())

if (is.na(password_length) || password_length < 4) {
  cat("invalid input. Please enter a number greater than or equal to 4.\n")
} else {
  generated_password <- generate(password_length)
  if (!is.na(generated_password)) {
    cat("Generated Password: ", generated_password, "\n")
  }
}