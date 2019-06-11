### Exploring ggplot2

# The diamonds data frame contains information on the prices and various metrics of 50,000 diamonds.
# Among the variables included are carat (a measurement of the size of the diamond) and price. 
# For the next exercises, you'll be using a subset of 1,000 diamonds.

# Here you'll use two common geom layer functions: geom_point() and geom_smooth(). 
# We already saw in the earlier exercises how these are added using the + operator.

### INSTRUCTIONS
# Explore the diamonds data frame with the str() function.
# Use the + operator to add geom_point() to the first ggplot() command. This will tell ggplot2 to draw points on the plot.
# Use the + operator to add geom_point() and geom_smooth(). 
# These just stack on each other! geom_smooth() will draw a smoothed line over the points.


### R
> # Explore the diamonds data frame with str()
> str(diamonds)
Classes 'tbl_df', 'tbl' and 'data.frame':	1000 obs. of  10 variables:
 $ carat  : num  0.31 1.5 0.9 1.01 0.33 1.08 1.07 0.33 0.44 1 ...
 $ cut    : Ord.factor w/ 5 levels "Fair"<"Good"<..: 5 2 4 5 3 5 4 4 5 4 ...
 $ color  : Ord.factor w/ 7 levels "D"<"E"<"F"<"G"<..: 4 4 5 3 1 4 4 5 5 4 ...
 $ clarity: Ord.factor w/ 8 levels "I1"<"SI2"<"SI1"<..: 5 2 4 4 5 5 3 5 8 5 ...
 $ depth  : num  62.4 64.3 62.8 60.9 63.2 62 61.6 59.5 62 58.6 ...
 $ table  : num  55 57 58 58 56 55 58 59 57 61 ...
 $ price  : int  802 8190 3810 7411 1109 6779 5453 743 1255 6989 ...
 $ x      : num  4.35 7.29 6.17 6.43 4.45 6.62 6.6 4.53 4.87 6.57 ...
 $ y      : num  4.33 7.2 6.13 6.47 4.44 6.57 6.56 4.48 4.91 6.5 ...
 $ z      : num  2.71 4.66 3.86 3.93 2.81 4.09 4.05 2.68 3.02 3.83 ...
> 
> # Add geom_point() with +
> ggplot(diamonds, aes(x = carat, y = price))+geom_point()
> 
> # Add geom_point() and geom_smooth() with +
> ggplot(diamonds, aes(x = carat, y = price))+geom_point()+geom_smooth()
`geom_smooth()` using method = 'gam'
