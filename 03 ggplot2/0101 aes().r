### Exploring ggplot2
# (1)
# We'll use several datasets throughout the courses to showcase the concepts discussed in the videos. 
# In the previous exercises, you already got to know mtcars. 
# Let's dive a little deeper to explore the three main topics in this course: The data, aesthetics, and geom layers.

# The mtcars dataset contains information about 32 cars from 1973 Motor Trend magazine. 
# This dataset is small, intuitive, and contains a variety of continuous and categorical variables.

# (2)
# The code for the last plot of the previous exercise is available in the script on the right. 
# It builds a scatter plot of the diamonds dataset, with carat on the x-axis and price on the y-axis. 
# geom_smooth() is used to add a smooth line.

# With this plot as a starting point, let's explore some more possibilities of combining geoms.



### INSTRUCTIONS
# (1)
# ggplot2 has already been loaded for you. Take a look at the first command. 
# It plots the mpg (miles per gallon) against the weight (in thousands of pounds). 
# You don't have to change anything about this command.
# In the second call of ggplot() change the color argument in aes() (which stands for aesthetics).
# The color should be dependent on the displacement of the car engine, found in disp.
# In the third call of ggplot() change the size argument in aes() (which stands for aesthetics).
# The size should be dependent on the displacement of the car engine, found in disp

# (2)
# Plot 2 - Copy and paste plot 1, but show only the smooth line, no points.
# Plot 3 - Show only the smooth line, but color according to clarity by placing the argument color = clarity in the aes() function of your ggplot() call.
# Plot 4 - Draw translucent colored points. Copy the ggplot() command from plot 3 (with clarity mapped to color).
# Remove the smooth layer.Add the points layer back in.
# Set alpha = 0.4 inside geom_point(). This will make the points 60% transparent/40% visible.

# (3)
# 1 - The dia_plot object has been created for you.
# 2 - Update dia_plot so that it contains all the functions to make a scatter plot by using geom_point() for the geom layer. 
# ....Set alpha = 0.2.
# 3 - Using +, plot the dia_plot object with a geom_smooth() layer on top. You don't want any error shading, 
#.....which can be achieved by setting the se = FALSE in geom_smooth().
# 4 - Modify the geom_smooth() function  so that it contains aes() and map clarity to the col argument.

### R
# (1)
> # A scatter plot has been made for you
> ggplot(mtcars, aes(x = wt, y = mpg)) +
    geom_point()
> 
> # Replace ___ with the correct column
> ggplot(mtcars, aes(x = wt, y = mpg, color = disp)) +
    geom_point()
> 
> # Replace ___ with the correct column
> ggplot(mtcars, aes(x = wt, y = mpg, size = disp)) +
    geom_point()
> 


# (2)
> # 1 - The plot you created in the previous exercise
> ggplot(diamonds, aes(x = carat, y = price)) +
    geom_point() +
    geom_smooth()
`geom_smooth()` using method = 'gam'
> 
> # 2 - Copy the above command but show only the smooth line
> ggplot(diamonds, aes(x = carat, y = price)) +
    geom_smooth()
`geom_smooth()` using method = 'gam'
> 
> 
> # 3 - Copy the above command and assign the correct value to col in aes()
> ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
    geom_smooth()
`geom_smooth()` using method = 'loess'
> 
> 
> # 4 - Keep the color settings from previous command. Plot only the points with argument alpha.
> 
> ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
    geom_point(alpha = 0.4)
> 

# (3)
> # 1 - The dia_plot object has been created for you
> dia_plot <- ggplot(diamonds, aes(x = carat, y = price))
> 
> # 2 - Expand dia_plot by adding geom_point() with alpha set to 0.2
> dia_plot <- dia_plot + geom_point(alpha = 0.2)
> 
> # 3 - Plot dia_plot with additional geom_smooth() with se set to FALSE
> dia_plot + geom_smooth(se = FALSE)
`geom_smooth()` using method = 'gam'
> 
> # 4 - Copy the command from above and add aes() with the correct mapping to geom_smooth()
> dia_plot + geom_smooth(aes(col = clarity), se = FALSE)
`geom_smooth()` using method = 'loess'
> 
