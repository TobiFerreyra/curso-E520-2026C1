library(tidyverse)
library(palmerpenguins)
glimpse(mpg)
?mpg

#Pregunta 2:

ggplot(mpg, aes(x = displ, y = hwy, color = cyl)) + geom_point()
ggplot(mpg, aes(x = displ, y = hwy, size = cyl)) + geom_point()
ggplot(mpg, aes(x = displ, y = hwy, color = cyl, size = cyl)) + geom_point()
ggplot(mpg, aes(x = displ, y = hwy, shape = class)) + geom_point()

#Pregunta 3:

ggplot(mpg, aes(x = displ, y = hwy, linewidth = displ)) + geom_point()

#Pregunta 4:

ggplot(mpg, aes(x = displ, y = hwy, color = drv, shape = drv)) + geom_point()

#Pregunta 5:

ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species)) + 
  geom_point()

ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm)) + 
  geom_point() + 
  facet_wrap(~species)

#Pregunta 6:

ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)) +
  geom_point() +
  labs(color = "Species", shape = "Species")

#Pregunta 7:

ggplot(penguins, aes(x = island, fill = species)) + 
  geom_bar(position = "fill")

ggplot(penguins, aes(x = species, fill = island)) + 
  geom_bar(position = "fill")

