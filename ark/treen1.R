#Rtreeni - projekti 10.11.2017 -treen1.R
#http://r4ds.had.co.nz/ - R for Data Science

sessionInfo()

# v?h?n oudot lokaatiotiedot?
# R-studion globaaliasetuksissa pit?isi muuttaa ty?hakemiston oletushakemisto. Nyt se on sama kuin
# projektin "R-kama".
library(tidyverse)



#"when your data is tidy, each column is a variable, and each row is an observation". Small in-memory datasets (1-2 Gb),
# If 10 - 100 , data.table . 

#data
library(nycflights13)
nycflights13::flights

#1.FILTER

jan1 <- filter(flights, month == 1, day == 1)

# v?h?n opettelua, mit? on ladattuna jne. Ja locale, pit?isk? muuttaa?
(dec25 <- filter(flights, month == 12, day == 25))
sqrt(2)
sqrt(2)^2 == 2
x <- sqrt(2)^2
format(x, digits = 9) #numero tekstiksi
near(sqrt(2)^2, 2)

filter(flights, month == 11 | month ==12)
filter(flights, month %in% c(11,12))


# Morganin s??nt?: !(x&y) sama kuin !x | !y,  ja !(x|y) sama kuin !x & !y 

filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)

# tallenna v?litulokset muuttujiin!

#NA on tarttuva!
NA == NA

x <- NA
y <- NA
x == y

is.na(x)

#filter() valisee vain rivit joissa ehto tosi, FALSE ja NA hyl?t??n. Jos puuttuvat halutaan mukaan, eksplisiittisesti.

df <- tibble(x = c(1, NA, 3))
filter(df, x > 1)
filter(df, is.na(x)| x > 1)
filter(flights, is.na(dep_time)) 

# 5.2.4 exercises
?flights
filter(flights, arr_delay >= 120)
filter(flights, dest == "IAH" | dest =="HOU")
filter(flights, dest == "HOU")

airlines
filter(flights, carrier == "UA" | carrier =="AA" | carrier == "DL")
filter(flights, month %in% c(7, 8, 9))
filter(flights, dep_delay < 1 & arr_delay > 120)

#Flights that were delayed by at least an hour, but made up over 30 minutes in flight
#  1. cond. dep_delay >= 60 2.cond (a) how to measure if depart. and arr on different days?

filter(flights, dep_delay >= 60) 

filter(flights, dep_time == 2400 | dep_time <= 0600)

#TÄRKEÄ!
#between - "...confusion stems from the fact that dplyr has a lot of functions 
#that allow you to work on data.frame column names as if they were normal variables, for instance
#filter(flights, month > 9)". Between is a normal function, so 
# between(flights$month, 7, 9) -> logical vector, and then flights[between(flights$month, 7, 9 ), ]
# or flights %>% filter(between(month, 7, 9))

flights %>% filter(between(month, 7, 9))

# canceled ?
filter(flights, is.na(dep_time)) # n=8225
filter(flights, is.na(dep_time) & is.na(arr_time)) # n=8225
filter(flights, is.na(dep_time) & is.na(arr_time)  & is.na(air_time)) # n=8225


#2.ARRANGE

temp1 <- arrange(flights, origin, month, day,dep_time, dest)
arrange(flights, desc(arr_delay))
arrange(flights,!is.na(dep_time) )
arrange(flights,desc(is.na(dep_time)) )
arrange(flights, desc(arr_delay))
arrange(flights, dep_time) # midnight is dep_time 1?
arrange(flights, desc(distance), air_time)
arrange(flights, desc(distance))
arrange(flights, distance) 

#.3. SELECT (columns)

temp1 <- select(flights, year, dest, origin, distance)
arrange(temp1,desc(distance), dest)
arrange(temp1, distance)

select(flights, year:day)
select(flights, -(year:day))

select(flights, starts_with("Car"))
flights
select(flights, starts_with("dep"), starts_with("arr"))
select(flights,dep_time, dep_delay, arr_time, arr_delay)
select(flights, contains("dep"),contains("arr"), -contains("sched"),-contains("car"))

select(flights,year, dep_time,arr_time,year, dep_time)
temp1 <- c("year", "month", "day", "dep_delay", "arr_delay")
select(flights, one_of(temp1))
# What is the use of this?

# 4. MUTATE

flights_sml <- select(nycflights13::flights,
           year:day,
           ends_with("delay"),
           distance,
           air_time,
           dep_time,
           sched_dep_time,
           arr_time
)

View(flights_sml)
summary(flights_sml)

mutate(flights_sml,
       gain = arr_delay - dep_delay,
       speed = distance / air_time*60
)

mutate(flights_sml,
       gain = arr_delay - dep_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
       )

# exercises

## 1. Convert dep_time and sched_dep_time from hhmm to h and min


mutate(flights_sml,
       dep_hour <- dep_time %/% 100,
       dep_min <- dep_time %% 100,
       sched_hour <- sched_dep_time %/% 100,
       sched_min <- sched_dep_time %% 100
       )

## 2. Compare air_time with arr_time - dep_time

mutate(flights_sml,
          air_time,
          arr_dep_diff = arr_time - dep_time)
View(flights_sml)

# time in format HHMM, must be changed
# outoja virheilmoja??
temp2 <- transmute(flights_sml,
       dep_hour <- dep_time %/% 100,
       dep_min <- dep_time %% 100,
       arr_hour <- arr_time %/% 100,
       arr_min <- arr_time %% 100,
       air_hour <- air_time %/% 100,
       air_min <- air_time %% 100
       )
temp1 <- select(temp2, air_hour, air_min, arr_hour, 
       arr_min, dep_hour, dep_min)
mutate(temp1,
          arr_dep_diff_h <- arr_hour - dep_hour,
          arr_dep_diff_m <- arr_min - dep_min)