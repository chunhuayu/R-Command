### (1)

# For simple exploratory plots, there are a variety of functions available. 
# ggplot2 offers a powerful and diverse array of functions, but qplot() allows for quick and dirty plots. 
# Plus, you should also be familiar with basic plotting notation.

### Instructions
# Have a look at the base R plotting function. It plots mpg on the y-axis against wt on the x-axis. 
# Create the same plot using ggplot().
# Create the same plot using qplot().

### R
> # The old way (shown)
> plot(mpg ~ wt, data = mtcars) # formula notation
> with(mtcars, plot(wt, mpg)) # x, y notation
> 
> # Using ggplot:
> ggplot(mtcars, aes(wt, mpg)) +
    geom_point()
> 
> # Using qplot:
> qplot(wt, mpg, data = mtcars)
> 

### (2)
# A basic scatter plot of mpg vs. wt from the mtcars dataset, made with qplot(), is provided.
# Using qplot(), map the categorical variable cyl onto size. 
#.....Remember, you'll have to wrap the variable name in a factor() function to convert to a categorical variable.
# Use qplot() again to the same plot, except with gear mapped onto size.
# Using qplot(), map the continuous variable hp onto color.
# Use qplot() again to the same plot, except with qsec mapped onto color.

# R
> # basic qplot scatter plot:
> qplot(wt, mpg, data = mtcars)
> 
> # Categorical variable mapped onto size:
> # cyl
> qplot(wt, mpg, data = mtcars, size = factor(cyl))
Warning message: Using size for a discrete variable is not advised.
> 
> # gear
> qplot(wt, mpg, data = mtcars, size = factor(gear))
Warning message: Using size for a discrete variable is not advised.
> 
> # Continuous variable mapped onto col:
> # hp
> qplot(wt, mpg, data = mtcars, col = hp)
> 
> # qsec
> qplot(wt, mpg, data = mtcars, col = qsec)
> 


### 3
# Choosing geoms, part 1
# qplot automatically takes care of assigning a geom to our plot given the type of data,
# but you can specify the geom yourselves.

### Instructions
# Make a quick plot using qplot(). Use the mtcars dataset and plot only factor(cyl) onto x. Which geom does qplot() choose?
# Extend the previous qplot() command so that it maps factor(vs) onto y. Which geom does qplot() use now?
# The previous plot had overlapping points. For the last instruction, copy the previous qplot(), 
#.....but manually set geom to "jitter" in qplot().

### R
> # qplot() with x only
> qplot(x=factor(cyl),data=mtcars)
> 
> # qplot() with x and y
> qplot(x=factor(cyl),y=factor(vs),data=mtcars)
> 
> # qplot() with geom set to jitter manually
> qplot(x=factor(cyl),y=factor(vs),data=mtcars, geom="jitter")
> 
