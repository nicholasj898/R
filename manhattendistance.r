#Manhattan distance
manhattan <- function(x, y){
  distance <- abs(x-y)
  distance <- sum(distance)
  return(distance)
}
x <- c(0, 1.414, 0, -1.414, 0)

y <- c(1.292, -0.554, -0.554, -1.015, 0.830)
manhattan(x, y)