### geom_jitter() 

# A geom that draws a point defined by an x and y coordinate, like geom_point, but jitters the points.
# Default statistic: stat_identity
# Default position adjustment: position_jitter

### Parameters
# x - (required) x coordinate of the point
# y - (required) y coordinate of the point
# size - (default: 0.5) diameter of the point
# shape - (default: 16=dot) the shape of the point
# colour - (default: "black") the color of the point
# fill - (default: NA) the fill of the point (only a small minority of shapes actually can be filled; see shape)
# alpha - (default: 1=opaque) the transparency of the point
# na.rm - (default: FALSE) silently remove points with NA coordinates

### Case Study I : 

d=data.frame(system=rep(c('before','after'), 2000), runtime=rexp(4000, 1))
ggplot() + 
geom_jitter(data=d, mapping=aes(x=system, y=runtime), size=1) +
opts(title="geom_jitter", plot.title=theme_text(size=40, vjust=1.5))
# Note: To adjust the amount of jittering along the x and y axes, one can explicitly set the position adjustment:

geom_jitter(data=d, mapping=aes(x=system, y=runtime), size=1, position=position_jitter(width=0.3, height=0)) 

# Because the only difference between geom_jitter and geom_point is the automatically set position adjustment, 
# the geom_point(...) layer below is identical to the geom_jitter(...) layer above.

geom_point(data=d, mapping=aes(x=system, y=runtime), size=1, position=position_jitter(width=0.3, height=0)) 



### Case Study II : Setting a dummy aesthetic

# In the base package you can make univariate plots with stripchart() (shown in the viewer) directly 
# and it will take care of a fake y axis for us. Since this is univariate data, there is no real y axis.

# You can get the same thing in ggplot2, but it's a bit more cumbersome 笨重. 
# The only reason you'd really want to do this is if you were making many plots and you wanted them to be in the same style,
# or you wanted to take advantage of an aesthetic mapping (e.g. colour).

### INSTRUCTIONS
# Try to run ggplot(mtcars, aes(x = mpg)) + geom_point() in the console. 
# x is only one of the two essential aesthetics for geom_point(), which is why you get an error message.

# 1 - To fix this, map a value, e.g. 0, instead of a variable, onto y. 
# ....Use geom_jitter() to avoid having all the points on a horizontal line.

# 2 - To make everything look nicer, 
# ....copy & paste the code for plot 1 and change the limits of the y axis using the appropriate scale_y_...() function. 
# ....Set the limits argument to c(-2, 2).


> ggplot(mtcars, aes(x = mpg)) + geom_point()
Error: geom_point requires the following missing aesthetics: y
> ggplot(mtcars, aes(x = mpg)) +
    geom_jitter()
Error: geom_point requires the following missing aesthetics: y
> ggplot(mtcars, aes(x = mpg, y = 0)) +
    geom_jitter()
> # 1 - Create jittered plot of mtcars, mpg onto x, 0 onto y
> ggplot(mtcars, aes(x = mpg, y = 0)) +
    geom_jitter()
> 
> # 2 - Add function to change y axis limits
> ggplot(mtcars, aes(x = mpg, y = 0)) +
    geom_jitter()+
    scale_y_continuous(limits=c(-2,2))
