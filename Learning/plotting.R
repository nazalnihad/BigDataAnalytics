#simple plot
plot(1,3)
plot(c(1,8),c(3,10))
x<-c(1,2,3,4,5)
y<-c(3,7,8,9,12)
plot(x,y)

#graph
plot(1:10,main="my graph" , xlab="x-axis" ,ylab = "y-axis",col="red",pch=20,cex=2)
plot(1:10,type="l",lwd=5,col='blue')

#multiple line
line1<-c(1,2,3,4,5,10)
line2<-c(2,5,7,8,9,10)
plot(line1,type="l",col="green",lwd=3)
lines(line2,type="l",col="yellow",lwd=3)

#scatter plot
x<-c(5,6,8,7,2,2,9,4,11,12,9,6)
y<-c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x,y,main="scatter plot",xlab="car age",ylab="car speed",col="black",pch=20,lwd=3)

#pie chart
x<-c(10,20,30,40)
colors<-c("blue","yellow","green","red")
lab<-c('babu','damu','sugu','ragu')
pie(x,labels =lab ,main="babus",col = colors)
legend("topleft",lab,fill = colors,xjust = 4)

#bar chart
x<-c("A","B","C","D")
y<-c(2,4,6,8)
barplot(y,names.arg = x,horiz = TRUE)
barplot(y,names.arg = x)

#histogram
v<-c(9,13,14,12,11,14,19,18,31,23,33,43)
hist(v,xlab="weight",col="yellow",border="blue")

#boxplot
input<-mtcars[,c('mpg','cyl')]
boxplot(mpg~cyl,data=mtcars,xlab="Num cylinder",ylab="miles per gal",main="mileage",col="lightblue")


 





