### (1) Basic package- plot()
# You want to make a plot of mpg (miles per gallon) against wt (weight in thousands of pounds) in the mtcars data frame,
# but this time you want the dots colored according to the number of cylinders, cyl. 
# How would you do that in base package? 
# You can use a little trick to color the dots by specifying a factor variable as a color.
# This works because factors are just a special class of the integer type.

### INSTRUCTIONS

# 1.Using the base package plot(), make a scatter plot with mtcars$wt on the x-axis and mtcars$mpg on the y-axis, 
# ..colored according to mtcars$cyl (use the col argument). You can specify data = but you'll just do it the long way here.
# 2.Add a new column, fcyl, to the mtcars data frame. This should be cyl converted to a factor.
# 3.Create a similar plot to instruction 1, but this time, use fcyl (which is cyl as a factor) to set the col.


### R
> # Plot the correct variables of mtcars
> plot(mtcars$wt, mtcars$mpg, col = mtcars$cy1)
> 
> # Change cyl inside mtcars to a factor
> mtcars$fcyl <- as.factor(mtcars$cyl)
> 
> # Make the same plot as in the first instruction
> plot(mtcars$wt, mtcars$mpg, col = mtcars$fcyl)
> # Plot the correct variables of mtcars
> plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)
> 
> # Change cyl inside mtcars to a factor
> mtcars$fcyl <- as.factor(mtcars$cyl)
> 
> # Make the same plot as in the first instruction
> plot(mtcars$wt, mtcars$mpg, col = mtcars$fcyl)
> 


# (2)
# base package and ggplot2, part 2 - lm

# If you want to add a linear model to your plot, shown right, you can define it with lm() 
# and then plot the resulting linear model with abline(). 
# However, if you want a model for each subgroup, according to cylinders, then you have a couple of options.

# You can subset your data, and then calculate the lm() and plot each subset separately. 
# Alternatively, you can vectorize over the cyl variable using lapply() and combine this all in one step. 
# This option is already prepared for you.

# The code to the right contains a call to the function lapply(), which you might not have seen before. 
# This function takes as input a vector and a function. 
# Then lapply() applies the function it was given to each element of the vector and returns the results in a list. 
# In this case, lapply() takes each element of mtcars$cyl and calls the function defined in the second argument.
# This function takes a value of mtcars$cyl and then subsets the data so that only rows with cyl == x are used. 
# Then it fits a linear model to the filtered dataset and uses that model to add a line to the plot with the abline() function.

# Now that you have an interesting plot, there is a very important aspect missing - the legend!
# In base package you have to take care of this using the legend() function. 
# This has been done for you in the predefined code.

### INSTRUCTIONS
# Fill in the lm() function to calculate a linear model of mpg described by wt and save it as an object called carModel.
# Draw the linear model on the scatterplot.
# Write code that calls abline() with carModel as the first argument. Set the line type by passing the argument lty = 2.
# Run the code already given to generate the plot with a different model for each group. You don't need to modify any of this.


> # Use lm() to calculate a linear model and save it as carModel
> carModel <- lm( mpg ~ wt, data = mtcars)
> 
> # Basic plot
> mtcars$cyl <- as.factor(mtcars$cyl)
> plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)
> 
> # Call abline() with carModel as first argument and set lty to 2
> abline(carModel, lty = 2)
> 
> # Plot each subset efficiently with lapply
> # You don't have to edit this code
> plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)
> lapply(mtcars$cyl, function(x) {
    abline(lm(mpg ~ wt, mtcars, subset = (cyl == x)), col = x)
    })
[[1]]
NULL

[[2]]
NULL

[[3]]
NULL

[[4]]
NULL

[[5]]
NULL

[[6]]
NULL

[[7]]
NULL

[[8]]
NULL

[[9]]
NULL

[[10]]
NULL

[[11]]
NULL

[[12]]
NULL

[[13]]
NULL

[[14]]
NULL

[[15]]
NULL

[[16]]
NULL

[[17]]
NULL

[[18]]
NULL

[[19]]
NULL

[[20]]
NULL

[[21]]
NULL

[[22]]
NULL

[[23]]
NULL

[[24]]
NULL

[[25]]
NULL

[[26]]
NULL

[[27]]
NULL

[[28]]
NULL

[[29]]
NULL

[[30]]
NULL

[[31]]
NULL

[[32]]
NULL
> 
> # This code will draw the legend of the plot
> # You don't have to edit this code
> legend(x = 5, y = 33, legend = levels(mtcars$cyl),
         col = 1:3, pch = 1, bty = "n")
> 


# (3)
### INSTRUCTIONS
# Plot 1: add geom_point() in order to make a scatter plot.
# Plot 2: copy and paste Plot 1.

# Add a linear model for each subset according to cyl by adding a geom_smooth() layer.
# Inside this geom_smooth(), set method to "lm" and se to FALSE.

# Note: geom_smooth() will automatically draw a line per cyl subset. 
# It recognizes the groups you want to identify by color in the aes() call within the ggplot() command.

# Plot 3: copy and paste Plot 2.

# Plot a linear model for the entire dataset, do this by adding another geom_smooth() layer.

# Set the group aesthetic inside this geom_smooth() layer to 1. This has to be set within the aes() function.
# Set method to "lm", se to FALSE and linetype to 2. These have to be set outside aes() of the geom_smooth().

# Note: the group aesthetic will tell ggplot() to draw a single linear model through all the points.

# (3)
### R
> # Convert cyl to factor (don't need to change)
> mtcars$cyl <- as.factor(mtcars$cyl)
> 
> # Example from base R (don't need to change)
> plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)
> abline(lm(mpg ~ wt, data = mtcars), lty = 2)
> lapply(mtcars$cyl, function(x) {
    abline(lm(mpg ~ wt, mtcars, subset = (cyl == x)), col = x)
    })
[[1]]
NULL

[[2]]
NULL

[[3]]
NULL

[[4]]
NULL

[[5]]
NULL

[[6]]
NULL

[[7]]
NULL

[[8]]
NULL

[[9]]
NULL

[[10]]
NULL

[[11]]
NULL

[[12]]
NULL

[[13]]
NULL

[[14]]
NULL

[[15]]
NULL

[[16]]
NULL

[[17]]
NULL

[[18]]
NULL

[[19]]
NULL

[[20]]
NULL

[[21]]
NULL

[[22]]
NULL

[[23]]
NULL

[[24]]
NULL

[[25]]
NULL

[[26]]
NULL

[[27]]
NULL

[[28]]
NULL

[[29]]
NULL

[[30]]
NULL

[[31]]
NULL

[[32]]
NULL
> legend(x = 5, y = 33, legend = levels(mtcars$cyl),
         col = 1:3, pch = 1, bty = "n")
> 
> # Plot 1: add geom_point() to this command to create a scatter plot
> ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) + geom_point()
>     # Fill in using instructions Plot 1
> 
> # Plot 2: include the lines of the linear models, per cyl
> ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
    geom_point() + # Copy from Plot 1
    geom_smooth( method = "lm", se= FALSE)
>   # Fill in using instructions Plot 2
> 
> # Plot 3: include a lm for the entire dataset in its whole
> ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
    geom_point() + # Copy from Plot 1
    geom_smooth( method = "lm", se= FALSE)  + 
    geom_smooth(aes(group=1),method = "lm", se= FALSE, linetype =2 )
> 
