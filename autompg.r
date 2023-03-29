#The “Auto MPG” dataset “concerns city-cycle fuel consumption in miles per 
#gallon, to be predicted in terms of 3 multivalued discrete and 5 continuous
#attributes.” The goal is to model mpg given engine displacement and number of cylinders.

myd <- read_csv("autompg.csv")
as.factor(myd$cylinders)

#Which is the dependent variable? Which are the independent variables?
#The dependent variables are on the left hand side and the independent variables are on the
#right hand side. Dependent variables are on y axis. Independent variables are on x axis
lm(data=myd, mpg~displacement)
#Plot mpg vs. displacement (code, plot)
ggplot(data=myd) + geom_point(mapping = aes(x=displacement, y=mpg))

#Overlays the best fit line over the dataset (code, plot)
lm(formula=mpg ~ displacement, data=myd)
ggplot(data=autompg) + geom_point(mapping = aes(x=displacement, y=mpg)) + geom_abline(slope = -0.06028, intercept = 35.17475)