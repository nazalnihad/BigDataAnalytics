data(mtcars)

# convert the gear col to a factor as a categorical variable
mtcars$gear <- as.factor(mtcars$gear)

# one-way ANOVA in displacement (disp) across different gear categories
gear_disp_anova <- aov(disp ~ gear, data = mtcars)

summary(gear_disp_anova)
