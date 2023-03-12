#Constructing a boxplot of these 9 values 8,11,17,36,25,24,1,20,64
x <- c(8,11,17,36,25,24,1,20,64)
#Creating the boxplot using ggplot
mydata <- data.frame(numbers = x)
ggplot(data=mydata) + geom_boxplot(mapping = aes(y=numbers))

#Exploring the airquality dataset
#Amount of variables, size of the data
colnames(airquality)
nrow(airquality)

summary(airquality)
#Finding outliers
ggplot(data=airquality) + geom_boxplot(mapping = aes(y = Ozone))
#Yes
ggplot(data=airquality) + geom_boxplot(mapping = aes(y = Solar.R))
#No
ggplot(data=airquality) + geom_boxplot(mapping = aes(y = Wind))
#Yes
ggplot(data=airquality) + geom_boxplot(mapping = aes(y = Temp))
#No
ggplot(data=airquality) + geom_boxplot(mapping = aes(y = Month))
#No
ggplot(data=airquality) + geom_boxplot(mapping = aes(y = Day))
#No