# IBC exercise #9

setwd("/Users/devinnorth/Desktop/biocomputing/r-novice-inflammation/IBC_Exercise_09/")
library(ggplot2)

# Part 1: plotting simple variable data
DO <- read.csv("DOdata.csv", header = T)
a = ggplot(data = DO, aes(x = Water.Temp, y = Dissolved.Oxygen))
a + geom_point() + xlab("Water Temp (C)") + ylab("Dissolved Oxygen (mg/L)") + 
  ggtitle("Ocean Dissolved Oxygen") + stat_smooth()

# Part 2:

data <- read.csv("data.txt", header = T)

# bar plot
b = ggplot(data = data, aes(x = region, y = observations, color = region)) + 
  stat_summary(geom = "bar", fun.y = "mean") + xlab("Region") + ylab("Observation") +
  theme_bw() + ggtitle("Mean Observations by Region")

# scatter plot
c = ggplot(data = data, aes(x = region, y = observations, color = region)) + xlab("Region") +
  ylab("Observations") + geom_jitter()

# the bar and scatter plots do show very different things
# the bar plot shows only the means, which don't seem to vary too much between regions
# the scatter plot shows more of the variation between the regions and the 
# range of observations is much larger than the bar plot alone would imply





