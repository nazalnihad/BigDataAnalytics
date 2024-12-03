# Simulated Data for Stock Prices of Two Companies over the Past Year
# Time period (months)
months <- c(1,2,3,4,5,6,7,8,9,10,11,12)

# Stock prices for Company A and Company B (randomly generated for demonstration)
set.seed(123)  # For reproducibility
company_a_stock <- c(150, 155, 160, 165, 170, 180, 185, 190, 200, 210, 220, 230)
company_b_stock <- c(200, 195, 190, 185, 180, 175, 170, 165, 160, 155, 150, 145)

# Plotting both stock prices on the same graph
plot(months, company_a_stock, type = "o", col = "blue", pch = 16, 
     xlab = "Month", ylab = "Stock Price (USD)", 
     main = "Stock Prices of Company A and Company B (Last Year)")


lines(months, company_a_stock, type = "o", col = "red", pch = 16)
lines(months, company_b_stock, type = "o", col = "blue", pch = 16)

plot(months, company_b_stock, type = "o", col = "blue", pch = 16, 
     xlab = "Month", ylab = "Stock Price (USD)", 
     main = "Stock Prices of Company A and Company B (Last Year)")
lines(months, company_b_stock, type = "o", col = "red", pch = 16)
legend("topleft", legend = c("Company A", "Company B"), col = c("blue", "red"), pch = 16)

#pie
# Blood type distribution data
blood_types <- c("A", "B", "AB", "O")
counts <- c(40, 30, 10, 20)  # Sample data: counts of each blood type

# Create a pie chart
pie(counts, labels = blood_types, main = "Blood Type Distribution in Population Sample", 
    col = c("lightblue", "lightgreen", "lightcoral", "lightyellow"))

# Highlight the majority (A) and minority (AB) groups
# Define custom colors for highlighting
highlight_colors <- c("yellow", "lightgreen", "lightcoral", "lightblue")

# Plot the pie chart again with highlighted colors
pie(counts, labels = blood_types, main = "Blood Type Distribution with Highlights",
    col = highlight_colors, 
    radius = 1, 
    clockwise = TRUE)

# Adding a legend to highlight majority and minority blood types
legend("topright", legend = c("Majority - A", "Minority - AB"), fill = c("yellow", "lightcoral"))


data <- c(5, 7, 9, 12, 14, 15, 20, 23, 25, 27, 30, 35, 37)
hist(data, col = "lightblue", main = "Histogram of Data", xlab = "Values", ylab = "Frequency")

data <- c(5, 7, 9, 12, 14, 15, 20, 23, 25, 27, 30, 35, 37)
boxplot(data, main = "Boxplot of Data", ylab = "Values")

categories <- c("A", "B", "C", "D")
values <- c(20, 35, 50, 40)
barplot(values, names.arg = categories, col = "lightgreen", main = "Bar Chart of Categories")



