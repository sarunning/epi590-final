
install.packages("gtsummary")
install.packages("tidytuesdayR")
install.packages("ggplot2")
library("gtsummary")
library("tidytuesdayR")
library("ggplot2")

#loading in data
tuesdata <- tidytuesdayR::tt_load('2026-06-09')
game_films <- tuesdata$game_films
rm(tuesdata)

#creating summary table of descriptive statistics:

tbl_summary(
  game_films,
  by = category,
  include = c(
    budget_low, budget_high, category,
    rotten_tomatoes, metacritic, worldwide_box_office))

#making a figure:
ggplot(data = game_films,
       aes(x = metacritic, y = rotten_tomatoes)) +
  geom_point()

