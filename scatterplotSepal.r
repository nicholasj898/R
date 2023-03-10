#Create a scatterplot of Sepal.Length vs Sepal.Width
ggplot(data = iris) + geom_point(aes(x = Sepal.Length, y = Sepal.Width))

#Create a scatterplot of Sepal.Length vs Sepal.Width, but plot points in red
ggplot(data=iris) + geom_point(aes(x=Sepal.Length, y=Sepal.Width), color="red")

#Create a scatterplot of Sepal.Length vs Sepal.Width and Species
ggplot(data=iris) + geom_point(mapping = aes(x=Sepal.Length, y=Sepal.Width, color=Species))