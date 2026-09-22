#Module 2 Lauren wetzel 
#shift command m for |> 
library(tidyverse)
mpg
##creating a ggplot 
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))
#PLay w/ ggplot 
ggplot(data = mpg)
#Aesthetic COLORS
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = class))
#Point size changes 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))
##transparency 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
##change point shape by class 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
#try to map an aesthetic to somthing ohter than a veriable name 
aes(colour = displ < 5) #doesnt work 
##FIX the error 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))
#the error waS + SIGN IN WRONG - place this is fixed\
#Facet anf Panel plots 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 2)
##Facet_grid needs two variables spearated by a ~
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)
##Use a . if you dont want to facet in the rows or culumn dimension 
ggplot(data = mpg) +
  geom_point(mapping =aes(x =displ, y =hwy)) +
  facet_grid(. ~ cyl)
##Fitting simple lines 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))
#wihtout points 
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))
# To change a geom type simply change the function 
#Change line type 
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
#using group to group objects by category ie car (our data is grouped)
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))
#Chnage the line color based on drv value
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv), 
              show.legend = FALSE)
#increasing complexity - multiple geoms 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))
#makes dots and lines 
##making it more effiecent 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()
##Mapping in specific layers 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()
##Same goes if you want to specify different data for eah layer 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)
#exercise 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))
#Plotting stats
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
#recreate last one using stat_count 
ggplot(data = diamonds) + 
  stat_count(mapping = aes(x = cut))
#demo
demo <- tribble(
  ~cut, ~freq,
  "Fair", 1610,
  "Good", 4906,
  "Very Good", 12082,
  "Premium", 13791,
  "Ideal", 21551
)
demo 
ggplot(data = demo) +
  geom_bar(mapping = aes(x = cut, y = freq), stat = "identity")
#override default mapping 
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = stat(prop), group = 1))
#gets a warning
#more info 
ggplot(data = diamonds) + 
  stat_summary(mapping = aes(x = cut, y = depth),
               fun.min = min,
               fun.max = max,
               fun = median)
##aesthetics color fill outline
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))
#clarity 
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
##position adjustments
#alter transparancy 
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity )) +
  geom_bar(alpha = 1/5, position = "identity")
#color the bar 
ggplot(data = diamonds, mapping = aes(x =cut, colour = clarity)) +
  geom_bar(fill = NA, position = "identity")
#fill bars
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")

#dodge
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x =cut, fill = clarity), position = "dodge")
##jitter 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")

##Template for future graphs 

ggplot(data = <DATA>) + 
  <GEOM_FUNCTION>(
    mapping = aes(<MAPPINGS>),
    stat = <STAT>, 
    position = <POSITION>
  ) +
  <FACET_FUNCTION>
  









