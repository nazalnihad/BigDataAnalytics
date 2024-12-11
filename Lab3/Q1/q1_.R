library(ggplot2)

path <- "D:/sem5/R/lab3/Q1/train.csv"
data <- read.csv(path)

model <- lm(SalePrice ~ GrLivArea, data = data)

slope <- coef(model)[2]
intercept <- coef(model)[1]

cat("Slope:", slope, "\n")
cat("Intercept:", intercept, "\n")

ggplot(data, aes(x = GrLivArea, y = SalePrice)) +
  geom_point(alpha = 0.5) +  
  geom_abline(slope = slope, intercept = intercept, col = 'red', 
              linewidth = 1) + labs(title = "Linear Regression of House Prices
  vs Size", x = "Size ",  y = "Price (SalePrice)") +
  theme_minimal()