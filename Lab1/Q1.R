#word printing

para <- 'lorem ipsom dolor hehhe siuuuuuu g hh'
words <- unlist(strsplit(para," "))
len<-0
word_len<-0
for (word in words){
  print(word)
  word_len<-word_len+nchar(word)
  len<-len+1
}

sprintf("number of words = %d" , length(words))
sprintf("avg word length= %.2f" , word_len/len)
sprintf("word with max length = %s , length = %d" , max(words),nchar(max(words)))

to_replace <- "hehhe"
replace <- "hi"
replaced <- gsub(to_replace,replace,para)
print(replaced)
