valid_age<-function(age){
  return (!is.na(as.integer(age)) && as.integer(age) > 0)
}

valid_grade<-function(grade){
  grades<-c("A","B","C","D","F")
  return (toupper(grade) %in% grades)
}

#valid_grade("a]f")
avg_age<-function(students){
  if(nrow(students)==0){
    return(NA)
  }
  
  ages<-students$age
  return (mean(ages))
}

get_std_records<-function(){
  students<-data.frame(name = character() , age = integer() , grade = character())
  
  repeat{
    cat("Enter name of student , q to quit : ")
    name<-readline()
    if(tolower(name)=="q"){
      break
    }
  
    repeat {
      cat("Enter age of student: ")
      age <- readline()
      if (valid_age(age)) {
        age <- as.integer(age)
        break
      } else {
        cat("Enter a valid age format\n")
      }
    }
  
    repeat {
      cat("Enter the grade of student: ")
      grade <- readline()
      if (valid_grade(grade)) {
        grade <- toupper(grade)
        break
      } else {
        cat("Enter a valid grade (A, B, C, D, F)\n")
      }
    }
  
  students<-rbind(students,data.frame(name = name,age = as.integer(age),grade = grade))
  
  }
  return(students)
}

students<-get_std_records()
if(nrow(students>0)){
  print(students)
  cat("avg age of students ",avg_age(students))
}