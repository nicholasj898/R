#From the iris dataset, Sepal.Length and Sepal.Width columns for those with Petal.Length > 3.0 and Petal.Width > 1.0.
#Using Tidyverse
iris %>% filter(Petal.Length > 3.0 , Petal.Width > 1.0) %>% select(Sepal.Length, Sepal.Width)

#Show only manufacturer and cty columns in increasing order of cty
mpg %>% arrange(cty) %>% select(manufacturer, cty)

#Show only manufacturer,cty,hwy columns in increasing order of cty
mpg %>% arrange(cty) %>% select(manufacturer, cty, hwy)

#Show only manufacturer,cty,hwy columns in increasing order of cty, break ties with hwy
mpg %>% arrange(cty, hwy) %>% select(manufacturer, cty, hwy)

#Show only manufacturer,cty,hwy columns in decreasing order of cty
mpg %>% arrange(-cty) %>% select(manufacturer, cty, hwy)

#Show only manufacturer, city, hwy columns for cars made by audi in decreasing order of cty
mpg %>% filter(manufacturer == "audi") %>% select(manufacturer, cty, hwy) %>% arrange(-cty)

#Show only manufacturer, cty, hwy columns for cars made by honda in decreasing order of cty and cty > 25
mpg %>% arrange(-cty) %>% filter(manufacturer == "honda" & cty > 25) %>% select(cty, manufacturer, hwy)

#Show only manufacturer column for cars made by honda in decreasing order of cty and cty > 25
mpg %>% arrange(-cty) %>% filter(manufacturer == "honda" & cty > 25) %>% select(manufacturer)