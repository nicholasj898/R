library(nycflights13)
#Lists data only for flights that departed on February 12, 2013.
nycflights13::flights %>% filter(year == 2013, month == 2, day == 12)

#Lists data only for flights that were delayed (both arrival and departure) by more than 2 hours.
nycflights13::flights %>% filter(dep_delay > 120,  arr_delay > 120)

#Lists data only for flights that were delayed (either arrival or departure) by more than 2 hours.
nycflights13::flights %>% filter(dep_delay > 120 |  arr_delay > 120)

#Lists data only for flights that were operated by United, American, or Delta.
nycflights13::flights %>% filter(carrier == "DL" | carrier == "UA" | carrier == "AA")

#Sorts data in order of fastest flights (air_time).
nycflights13::flights %>% mutate(mph = distance / air_time * 60) %>% arrange(-mph)

#Sorts data in order of longest duration flights (air_time).
nycflights13::flights %>% arrange(flights, desc(distance))

#Shows only the origin and destination of flights sorted by longest duration flights.
nycflights13::flights %>% arrange(flights, desc(dep_delay))

#Adding a new variable that indicates the total delay (both departure and arrival delay).
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% view()

#Shows only the origin and destination of flights sorted by descending order of total delay.
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% arrange(-total_delay) %>% select(origin, dest)

#Shows only the origin and destination of 10 most delayed flights [Hint: there are multiple ways of solving this. Some additional functions that you will find useful are head(), slice(), min_rank().]
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% arrange(-total_delay) %>% select(origin, dest) %>% head(10)
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% arrange(-total_delay) %>% select(origin, dest) %>% slice(1:10)
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% slice_max(total_delay, n = 10)

#Shows the average total delay for every departure city.
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% group_by(origin) %>% summarise(mean(total_delay, na.rm=TRUE))

#Shows the average total delay for every departure-arrival city pair.
nycflights13::flights %>% mutate(total_delay = dep_delay + arr_delay) %>% group_by(origin, dest) %>% summarise(mean(total_delay, na.rm=TRUE))



str(airquality)
airquality %>% filter(Month == 5)