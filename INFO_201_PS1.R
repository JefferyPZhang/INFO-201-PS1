## Name: Jeffery Zhang
## Class: INFO 201
## TA: Xinyu Chang (AD)
## Due: October 9th, 2023

### ---------- PS1: basic R (variables, loops, strings) ----------

### ---------- 1.1: Variables (10pt) ----------

## 1.1.1
my_age <- 19

## 1.1.2
sec_in_year <- 60 * 60 * 24 * 365
cat("There are", sec_in_year,"seconds in a year\n")

## 1.1.3
my_age_in_sec <- sec_in_year * my_age
cat("My age, in seconds, is", my_age_in_sec, "\n")

## 1.1.4
typ_human_lifespan <- sec_in_year * 72
cat("There are typically", typ_human_lifespan, "seconds in a human's lifetime.")

### ---------- 1.2: Computing (15pt) ----------

## Relevant Functions

moving_mass <- function(m_0, v) {
  moving_mass <- m_0 / lorentz_factor(v)
  return(moving_mass)
}

lorentz_factor <- function(v) {
  lorentz_factor <- sqrt(1 - ((v ^ 2) / (3e5 ^ 2)))
  return(lorentz_factor)
}

## 1.2.1
moving_mass_student <- moving_mass(60, 10)
cat("A 60 kg student running at 10 m/s has a moving mass of", moving_mass_student)

## 1.2.2
mass_difference <- moving_mass_student - 60
cat("The mass difference between a stationary student and this moving student is", mass_difference)

## 1.2.3
moving_mass_proton <- moving_mass(1.672e-27, 270000)
cat("the mass of such a proton is", moving_mass_proton)

## 1.2.4
proton_move_still_ratio <- moving_mass_proton / 1.672e-27
cat("such a proton would be", proton_move_still_ratio, "times heavier")

### ---------- 2: Logical Operations (25pt) ----------

## 2.1
I_am_old <- my_age_in_sec > 6.5e8
cat("I am", my_age_in_sec, "which is lesser than 6.5e8, meaning I am NOT old")

## 2.2
age_between_ver_1 <- (I_am_old & my_age_in_sec < 1e9)
cat("I am", my_age_in_sec, "which is in between 6.5e8 and 1e9 seconds old")

## 2.3
age_between_ver_2 <- (my_age_in_sec > 5e8 & !(my_age_in_sec > 7e8))
cat("I am", my_age_in_sec, "which is in between 5e8 and 7e8 seconds old")

### ---------- 3: Strings (25pt) ----------

## 3.1
library("stringr")

## 3.2
template <- "Hello, my name is <name>, and I’m <age> years old."

## 3.3
name <- "Jeffery"
age <- "19"

## 3.4
intro <- template
intro <- str_replace(intro, "<name>", name)
intro <- str_replace(intro, "<age>", age)
cat(intro)

## 3.5
loud_intro <- toupper(intro)
cat(loud_intro)

## 3.6
num_of_char_e <- str_count(intro, "e")
cat("there are", num_of_char_e, "instances of the character e in the intro")

### ---------- 4: Loops (25pt) ----------

## 4.1
for (i in 1 : 10) {
  cat(i, "")
}

## 4.2
for (i in 1 : 10) {
  cat(i ^ 2, "")
}

## 4.3
for(i in 1 : 10) {
  i2 <- i^2
  cat(i, "^2 = ", i2, "\n", sep="")
}

## 4.4
sum_100 <- 0
for (i in 1 : 100) {
  sum_100 <- sum_100 + i
}
cat("the sum of all integers from 1 - 100 is", sum_100)

## 4.5
factorials <- rep(0, 10)
for (i in 1 : 10) {
  value <- 1
  for (j in 1 : i) {
    value <- value * j
  }
  factorials[i] <- value
}
cat("the factorials for all numbers is as follows:", factorials)

