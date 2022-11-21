#Install packages
install.packages("tidyverse")
install.packages("leaflet") 
install.packages('rlang')
install.packages("readr")


#Load packages
library("tidyverse")
library("leaflet")
library(readr)
library("ggspatial")

world_coordinates <- map_data("world")

# create world map using ggplot() function
ggplot(data = world) +
  geom_sf(color = "black", fill = "brown") +
  xlab("Longitude") + ylab("Latitude") +
  ggtitle("World map") +
  annotation_scale(location = "bl", width_hint = 0.25) +
  annotation_north_arrow(location = "tr", which_north = "true", 
                         pad_x = unit(0.00, "in"), pad_y = unit(0.00, "in"),
                         style = north_arrow_fancy_orienteering)


