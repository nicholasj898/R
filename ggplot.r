#Labeling the axes as “Sepal Length” and “Sepal Width”
ggplot(data=iris)+geom_point(mapping=aes(x=Sepal.Length, y=Sepal.Width)) + scale_x_continuous("Sepal length") + scale_y_continuous("Sepal width")

#Setting the limits of the axes to 1…10
ggplot(data=iris)+geom_point(mapping=aes(x=Sepal.Length, y=Sepal.Width)) + scale_x_continuous("Sepal length", limits=c(1,10)) + scale_y_continuous("Sepal width", limits=c(1,10))

#Changing the theme
ggplot(data=iris)+geom_point(mapping=aes(x=Sepal.Length, y=Sepal.Width)) + scale_x_continuous("Sepal length", limits=c(1,10)) + scale_y_continuous("Sepal width", limits=c(1,10)) + theme_dark()

#Histogram of Petal.Length
ggplot(data=iris) + geom_histogram(mapping=aes(x=Petal.Length))

#Trying different values of binwidth
ggplot(data=iris) + geom_histogram(mapping = aes(x=Petal.Length), binwidth = 0.5)