# title: make shot charts script
# description: In this script, we will be making shot charts of different players.
# input(s): .csv, .jpg
# output(s): .pdf, .png

# load functions
library(ggplot2)
library(jpeg)
library(grid)

thompson_scatterplot <- ggplot(data = thompson) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
thompson_scatterplot

# court image (to be used as background of plot)
court_file <- "../images/nba-court.jpg"

# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

# shot chart with court background
thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()
thompson_shot_chart

# save as pdf
ggsave(filename = "../images/klay-thompson-shot-chart.pdf", width = 6.5, height = 5, units = "in")
ggsave(filename = "../images/klay-thompson-shot-chart.png", width = 6.5, height = 5, units = "in")


# shot chart for curry
curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()
curry_shot_chart

# save as pdf
ggsave(filename = "../images/stephen-curry-shot-chart.pdf", width = 6.5, height = 5, units = "in")
ggsave(filename = "../images/stephen-curry-shot-chart.png", width = 6.5, height = 5, units = "in")


# shot chart with court background
durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()
durant_shot_chart

# save as pdf
ggsave(filename = "../images/kevin-durant-shot-chart.pdf", width = 6.5, height = 5, units = "in")
ggsave(filename = "../images/kevin-durant-shot-chart.png", width = 6.5, height = 5, units = "in")


# shot chart for green
green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Gray (2016 season)') +
  theme_minimal()
green_shot_chart

# save as pdf
ggsave(filename = "../images/draymond-green-shot-chart.pdf", width = 6.5, height = 5, units = "in")
ggsave(filename = "../images/draymond-green-shot-chart.png", width = 6.5, height = 5, units = "in")


# shot chart for iguodala
iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()
iguodala_shot_chart

# save as png & pdf
ggsave(filename = "../images/andre-iguodala-shot-chart.pdf", width = 6.5, height = 5, units = "in")
ggsave(filename = "../images/andre-iguodala-shot-chart.png", width = 6.5, height = 5, units = "in")

# create one graph using facetting
gsw_shot_charts <- ggplot(data = shots_data) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag), size = 0.5) +
  ylim(-50, 420) +
  ggtitle('Shot Charts: GSW (2016 season)') +
  theme_minimal() + theme(legend.position= "top", legend.title = element_blank()) + facet_wrap(~ name)
gsw_shot_charts

# save as pdf
ggsave(filename = "../images/gsw_shot_charts.pdf", width = 8, height = 7, units = "in")
ggsave(filename = "../images/gsw_shot_charts.png", width = 8, height = 7, units = "in")
