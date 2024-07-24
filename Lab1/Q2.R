word <- readline(prompt = "Enter the word : ")
shift <- as.numeric(readline(prompt = "Enter the shift : "))
result<-""


for (i in seq_len(nchar(word))){
  c<-substr(word,i,i)
  if (c>="A" && c<="Z"){
    result<-paste0(result,intToUtf8((utf8ToInt(c)+shift - utf8ToInt("A"))%%26 + utf8ToInt("A")))
  }
  else{
    result<-paste0(result,intToUtf8((utf8ToInt(c)+shift - utf8ToInt("a"))%%26 + utf8ToInt("a")))
  }
}
print(result)