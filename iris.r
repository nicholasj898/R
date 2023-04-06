#For the iris dataset
#Building a linear model to predict Petal.Length given:
Petal.Width^2
iris <- iris %>% mutate(Petal.Width2 = Petal.Width ^ 2)
Irispred <- lm(data=iris, formula = Petal.Length ~ Petal.Width2)

#What is the linear regression equation?
Petal.Length = 2.0180 + 0.8633 * Petal.Width2

#Plotting the linear model
library(modelr)
iris <- iris %>% add_predictions(Irispred) %>% view()
ggplot(data=iris) + geom_point(mapping=aes(y=Petal.Length, x=Petal.Width)) + geom_line(mapping=aes(y=pred, x=Petal.Width))
