#library that contains lda() function
library(MASS)
head(iris)
summary(iris)
str(iris)
# fit model. Dot (.) means to use all features available.
mLDA <- lda(Species ~ ., data = iris)
prediction <- predict(mLDA, iris[, 1:4])$class
# accuracy - confusion matrix
table(prediction, iris$Species)

new_case <- data.frame(Sepal.Length = 5.1, Sepal.Width = 3.5, Petal.Length = 1.4, Petal.Width = 0.2, Specie = "setosa")
new_case
data.frame(actual = new_case$Specie,
           predict = predict(mLDA, new_case[, 1:4])$class)
