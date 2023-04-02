#The linear model equation relating the three variables from 
Petal.Width ~ Petal.Length + Sepal.Length
lm(formula = Petal.Width ~ Petal.Length + Sepal.Length, data = iris)
#Petal.Width = -0.008996 + 0.449376 * Petal.Length - 0.0082218 * Sepal.Length

#0-1 coding of sem={Freshman, Soph, Junior, Senior}
#So it makes 3 dummy variables

#Load the autompg.csv file
use <- read_csv("autompg.csv")
cylindersIntoFactor <- as.factor(use$cylinders)

#Creating a linear model called mod_displ_cyl of mpg vs. displacement and cylinders. 
#Output of summary(mod_displ_cyl)
mod_displ_cyl <- lm(data=use, formula = mpg ~ displacement + cylindersIntoFactor)
summary(mod_displ_cyl)

#How many dummy (i.e., 0-1) variables were created in the model?
#4 dummy variables were created in the model
#What are they called?
#Cylinder4, cylinder5, cylinder6, cylinder8

#The model equations relating mpg with displacement and cylinders. 
#(need to simplify when varts is 0 or 1)
mpg = 24.43445 - 0.05358*displacement + 10.73507*0 + 10.70112*0 + 7.23906*0 + 9.01381*0
mpg = 24.43445 - 0.05358*displacement
mpg = 24.43445 - 0.05358*displacement +10.73507*1 + 10.70112*0 + 7.23906*0 + 9.01381*0
mpg = 24.43445 - 0.05358*displacement + 10.73507*1
mpg = 35.16952 - 0.05358*displacement
mpg = 24.43445 - 0.05358*displacement + 10.73507*0 + 10.70112*1 + 7.23906*0 + 9.01381*0
mpg = 24.43445 - 0.05358*displacement + 10.70112*1
mpg = 35.13557 - 0.05358*displacement 
mpg = 24.43445 - 0.05358*displacement + 10.73507*0 + 10.70112*0 + 7.23906*1 + 9.01381*0
mpg = 24.43445 + -0.05358*displacement + 7.23906*1 
mpg = 31.67351 - 0.05358*displacement