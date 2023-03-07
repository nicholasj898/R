#Consider the data airquality
#How many rows, columns, what are the variable names?
A <- nrow(airquality)
B <- ncol(airquality)
C <- colnames(airquality)
A
B
C
#Alternate way : 
str(airquality)

  
#Are there any NAs in col ozone?
airquality
length(is.na(airquality$ozone))
length(which(is.na(airquality$ozone)))    #right
#sum(is.na(airquality$ozone)) 
#rownames(airquality(is.na(airquality$ozone),])


#What is the mean of the ozone var?
mean(airquality$Ozone, na.rm = TRUE)

nrows(airquality$Ozone, na.rm = TRUE)