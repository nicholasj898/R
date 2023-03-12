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

#Variables that should be converted to factor:
#DAY AND MONTH
#Converting these variables
#Month
as.factor(airquality$Month)
#Day
as.factor(airquality$Day)

#Visualing any pair of variables of the airquality dataset
#Choose the appropriate plot for any pair
#ggplot(data=airquality) + geom_point(mapping = aes(x=Day, y=Temp)
#ggplot(data=airquality) + geom_point(mapping = aes(x=Month, y=Temp)
#ggplot(data=airquality) + geom_boxplot(mapping = aes(y=Solar.R, x=Ozone))
#ggplot(data=airquality) + geom_boxplot(mapping = aes(y=Wind, x=Month))
#ggplot(data=airquality) + geom_boxplot(mapping = aes(y=Ozone, x=Month))