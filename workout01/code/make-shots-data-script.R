# title: make shots data script
# description: In this script, we will be making data charts of different players.
# input(s): .csv
# output(s): .txt, .csv

  
library(stringr)
library(dplyr)

# Reading file with relative path
curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE , sep = "," , header = TRUE, na.strings = c("", " ", "NA"), colClasses = c(
  "character",
  "factor",
  "double",
  "double",
  "double",
  "double",
  "character", 
  "character",
  "character",
  "double",
  "character",
  "double",
  "double"
))

# add new column "name"
curry <- cbind(name = "Stephen Curry", curry)

# replacing shot_made_flag
n <- curry$shot_made_flag == "n"
curry$shot_made_flag[n] <- "shot_no"

y <- curry$shot_made_flag == "y"
curry$shot_made_flag[y] <- "shot_yes"

# adding minute column
curry <- mutate(curry, minute = period * 12 - minutes_remaining)

#sink summary to output

sink(file = '../output/stephen-curry.txt')
summary(curry)
sink()



iguodala <- read.csv("../data/andre-iguodala.csv", stringsAsFactors = FALSE , sep = "," , header = TRUE, na.strings = c("", " ", "NA"), colClasses = c(
  "character",
  "factor",
  "double",
  "double",
  "double",
  "double",
  "character", 
  "character",
  "character",
  "double",
  "character",
  "double",
  "double"
))

# add a new column 'name'
iguodala <- cbind(name = "Andre Iguodala", iguodala)

# replacing shot_made_flag
n <- iguodala$shot_made_flag == "n"
iguodala$shot_made_flag[n] <- "shot_no"

y <- iguodala$shot_made_flag == "y"
iguodala$shot_made_flag[y] <- "shot_yes"

iguodala <- mutate(iguodala, minute = period * 12 - minutes_remaining)

sink(file = '../output/andre-iguodala.txt')
summary(iguodala)
sink()



green <- read.csv("../data/draymond-green.csv", stringsAsFactors = FALSE, sep = "," , header = TRUE, na.strings = c("", " ", "NA"), colClasses = c(
  "character",
  "factor",
  "double",
  "double",
  "double",
  "double",
  "character", 
  "character",
  "character",
  "double",
  "character",
  "double",
  "double"
))

# add a new column 'name'
green <- cbind(name = "Draymond Green", green)

# replacing shot_made_flag
n <- green$shot_made_flag == "n"
green$shot_made_flag[n] <- "shot_no"

y <- green$shot_made_flag == "y"
green$shot_made_flag[y] <- "shot_yes"

green <- mutate(green, minute = period * 12 - minutes_remaining)

sink(file = '../output/draymond-green.txt')
summary(green)
sink()



durant <- read.csv("../data/kevin-durant.csv", stringsAsFactors = FALSE, sep = "," , header = TRUE, na.strings = c("", " ", "NA"), colClasses = c(
  "character",
  "factor",
  "double",
  "double",
  "double",
  "double",
  "character", 
  "character",
  "character",
  "double",
  "character",
  "double",
  "double"
))


# add a new column 'name'
durant <- cbind(name = "Kevin Durant", durant)

# replacing shot_made_flag
n <- durant$shot_made_flag == "n"
durant$shot_made_flag[n] <- "shot_no"

y <- durant$shot_made_flag == "y"
durant$shot_made_flag[y] <- "shot_yes"

durant <- mutate(durant, minute = period * 12 - minutes_remaining)

sink(file = '../output/kevin-durant.txt')
summary(durant)
sink()


thompson <- read.csv("../data/klay-thompson.csv", stringsAsFactors = FALSE,  sep = "," , header = TRUE, na.strings = c("", " ", "NA"), colClasses = c(
  "character",
  "factor",
  "double",
  "double",
  "double",
  "double",
  "character", 
  "character",
  "character",
  "double",
  "character",
  "double",
  "double"
))

# add a new column 'name'
thompson <- cbind(name = "Klay Thompson", thompson)

# replacing shot_made_flag
n <- thompson$shot_made_flag == "n"
thompson$shot_made_flag[n] <- "shot_no"

y <- thompson$shot_made_flag == "y"
thompson$shot_made_flag[y] <- "shot_yes"

thompson <- mutate(thompson, minute = period * 12 - minutes_remaining)

sink(file = '../output/klay-thompson.txt')
summary(thompson)
sink()

# stack tables into one single data frame using rbind()
shots_data <- rbind(curry, durant)
shots_data <- rbind(shots_data, green)
shots_data <- rbind(shots_data, iguodala)
shots_data <- rbind(shots_data, thompson)

# export shots-data to data folder
write.csv(shots_data, "../data/shots-data.csv")

# export shots-data-summary.txt
sink(file = '../output/shots-data-summary.txt')
summary(shots_data)
sink()