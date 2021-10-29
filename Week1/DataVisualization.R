## ---- warning=FALSE,message=FALSE,error=FALSE, results='hide'----------------------------------------------------------
#install.packages("tidyverse") to install package
library(tidyverse)


## ----------------------------------------------------------------------------------------------------------------------
mpg


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  labs(title = "Fuel Efficiency based on Engine Size",x= "Engine Size",y= "Fuel Efficiency")



## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg)


## ----------------------------------------------------------------------------------------------------------------------
nrow(mtcars)
ncol(mtcars)


## ----------------------------------------------------------------------------------------------------------------------
help(mpg)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))


## ----------------------------------------------------------------------------------------------------------------------
summary(mpg)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_smooth(mapping = (aes(x = displ, y = hwy)))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_smooth(mapping = (aes(x = displ, y = hwy, linetype = drv)))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y = hwy, color = drv), show.legend = FALSE )


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth( data = filter(mpg, class == "subcompact"), se = FALSE )


## ----------------------------------------------------------------------------------------------------------------------
summary(diamonds)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1) )


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) + 
  stat_summary(mapping = aes(x = cut, y = depth), fun.min = min, fun.max = max, fun = median)


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, color = cut))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) +
  geom_bar(alpha = 1/5, position = "identity")

ggplot(data = diamonds, mapping = aes(x = cut, color = clarity)) +
  geom_bar(fill = NA, position = "identity")


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")


## ----------------------------------------------------------------------------------------------------------------------
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot()

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot() +
  coord_flip()


## ----------------------------------------------------------------------------------------------------------------------
nz <- map_data("nz")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", color = "black")

ggplot(nz, aes(long, lat, group = group)) + 
  geom_polygon(fill = "white", color = "black") + 
  coord_quickmap()


## ----------------------------------------------------------------------------------------------------------------------
bar <- ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut), show.legend = FALSE, width = 1) + 
  theme(aspect.ratio = 1) + 
  labs(x = NULL, y = NULL) 

bar + coord_flip() 
bar + coord_polar()

