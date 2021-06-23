library(tidyverse)
library(ggthemes)

carplot <- mtcars %>% 
  select(mpg, wt) %>% 
  ggplot(mapping = aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_smooth(method = "lm", formula = "y~x", se = FALSE) + 
  theme_clean() + 
  labs(title = "Fuel Efficiency and Weight", 
       subtitle = "Heavier cars are less fuel efficient", 
       x = "Weight (in 1000s of lbs)", 
       y = "MPG", 
       caption = "Henderson and Vellerman (1981)")

write_rds(carplot, "car-plot.rds")
