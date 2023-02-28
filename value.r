#Show all rows where Species is “setosa”
which(iris$species == "setosa")


#Show all rows where species is setosa and sepal length is > 3
iris %>% view()
iris[iris$Species == "setosa", "Sepal.Length" > 3.0]
which(iris$species == "setosa")


#What is largest value of sepal length
iris[iris$Sepal.Length == max(iris$Sepal.Length), ]
max(iris$Sepal.Length)


#Which row contains this value?
which(iris$Sepal.Length == max(iris$Sepal.Length))


#What Species corresponds to this largest Sepal.Length?
iris[132,5]
iris[132, "Species"]
iris[which(iris$Sepal.Length == max(iris$Sepal.Length), "Species")]
iris(iris$Sepal.Length == max(iris$Sepal.Length))