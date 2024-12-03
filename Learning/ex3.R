#q1
#Write a function that takes a matrix as input and returns the largest elenent in the top
#row
mat_top<-function(mat){
  top = max(mat[1,])
  return (top)
}

mat<-matrix(runif(9,1,100),nrow=3,ncol=3)
print(mat)

t<-mat_top(mat)
print(t)

#q2
#Define a function that calculates the area of a rectangle given its width and height. Use
#this function to calculate the area of multiple rectangles.
rect_area<-function(l){
  area = l[1]*l[2]
  return (area)
}

r1<-c(1,2)
a<-rect_area(r1)
print(a)
 
#OR

# Function to calculate the area of a rectangle
rectangle_area <- function(width, height) {
  return(width * height)
}

# Example usage: Calculate the area of multiple rectangles
widths <- c(5, 10, 8)   # Widths of rectangles
heights <- c(3, 7, 6)   # Heights of rectangles

# Calculate areas for all rectangles
areas <- mapply(rectangle_area, widths, heights)

# Print results
areas

#Q2.2
#Write a function that takes a data frame as input and returns a new data frane with
#missing values replaced by the mean of their respective columns.

fix_data<-function(frame){
  frame[]<-lapply(frame, function(x) ifelse(is.na(x),mean(x,na.rm=TRUE),x))
  return(frame)
}

data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Age = c(23, NA, 25, 22),
  Score = c(88, 91, NA, 75)
)

print("Original Data:")
print(data)

# Replace missing values with the mean
clean_data <- fix_data(data)

# Print the modified data
print("Modified Data (Missing Values Replaced with Mean):")
print(clean_data)
