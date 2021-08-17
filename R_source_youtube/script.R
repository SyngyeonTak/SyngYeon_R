rm(list = ls())

data <- read.csv("C:/Users/fge50/Downloads/covid_R/COVID19_line_list_data.csv")

if(!require("pacman")) install.packages("pacman")

pacman::p_load(pacman, psych)
describe(data)

death_dummy <- as.integer(data$death != 0)

sum(data$death_dummy) / nrow(data)

# 1. AGE
# claim: Is age relevant to death rate for COVID?
dead <- subset(data, death_dummy == 1)
alive <- subset(data, death_dummy == 0)
mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)
t.test(dead$age, alive$age, alternative = "two.sided", conf.level = 0.95)

# 2. GENDER
# claim: Is gender relevant to death rate for COVID?
men <- subset(data, gender == 'male')
women <- subset(data, gender == 'female')
mean(men$death_dummy, na.rm =TRUE)
mean(women$death_dummy, na.rm = TRUE)
t.test(men$death_dummy, women$death_dummy, alternative = "two.sided", conf.level = 0.99)

