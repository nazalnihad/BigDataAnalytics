data(mtcars)

head(mtcars)

# pearson correlation test between hp and mpg
hp_mpg_correlation <- cor.test(mtcars$hp, mtcars$mpg, method = "pearson")

print(hp_mpg_correlation)
