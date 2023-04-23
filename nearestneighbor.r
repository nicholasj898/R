countyseats %>% inner_join(population)
ghh <- f() %>% g() %>% x 
#Preg BP
#(2, 70), (2, 74) = sqrt(((2 - 2)^2) + ((0-1)^2))) = 2.24
#Chris, Carlos= sqrt(((5 - 6)^2) + ((0-0)^2) + ((1-2)^2)) = 1.41
#Chris, Jose= sqrt(((5 - 4)^2) + ((0-0)^2) + ((1-2)^2)) = 1.41
#Chris, Maria= sqrt(((5 - 5)^2) + ((0-1)^2) + ((1-3)^2)) = 2.24
#Chris, Belen= sqrt(((5 - 5)^2) + ((0-0)^2) + ((1-2)^2)) = 1

#Chris (5, 0, 1)
#Chris, Laura = sqrt(((5 - 5)^2) + ((0-1)^2) + ((1-3)^2)) = 2.24
#Chris, Carlos= sqrt(((5 - 6)^2) + ((0-0)^2) + ((1-2)^2)) = 1.41
#Chris, Jose= sqrt(((5 - 4)^2) + ((0-0)^2) + ((1-2)^2)) = 1.41
#Chris, Maria= sqrt(((5 - 5)^2) + ((0-1)^2) + ((1-3)^2)) = 2.24
#Chris, Belen= sqrt(((5 - 5)^2) + ((0-0)^2) + ((1-2)^2)) = 1

#Using 1-NN, the predicted output for name “Chris”?
#Chris, Belen= sqrt(((5 - 5)^2) + ((0-0)^2) + ((1-2)^2)) = 1
#Chris, Belen= sqrt(((5 - 5)^2) + ((0-0)^2) + ((1-2)^2)) = 1


#Using 3-NN, the predicted output for name “Chris”?
#Chris, Laura = sqrt(((5 - 5)^2) + ((0-1)^2) + ((1-3)^2)) = 2.24
#Chris, Carlos= sqrt(((5 - 6)^2) + ((0-0)^2) + ((1-2)^2)) = 1.41
#Chris, Jose= sqrt(((5 - 4)^2) + ((0-0)^2) + ((1-2)^2)) = 1.41

Chris <- c(5, 0, 1)
Laura <- c(5, 1, 3)
Carlos <- c(6, 0, 2)
Jose <- c(4, 0, 2)
Maria <- c(5, 1, 3)
Belen <- c(5, 0, 2)

sqrt(sum((Chris - Laura)^2))
sqrt(sum((Chris - Carlos)^2))
sqrt(sum((Chris - Jose)^2))
sqrt(sum((Chris - Maria)^2))
sqrt(sum((Chris - Belen)^2))