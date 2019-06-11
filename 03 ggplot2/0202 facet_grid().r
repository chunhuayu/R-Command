### Variables to visuals, part 1

# So far you've seen four different forms of the iris dataset: iris, iris.wide, iris.wide2 and iris.tidy. 
# Don't let all these different forms confuse you! 
# It's exactly the same data, just rearranged so that your plotting functions become easier.

# To see this in action, consider the plot in the graphics device at right. 
# Which form of the dataset would be the most appropriate to use here?

### INSTRUCTIONS
# Look at the structures of iris, iris.wide and iris.tidy using str().
# Fill in the ggplot function with the appropriate data frame and variable names. 
# The variable names of the aesthetics of the plot will match the ones you found using the str() command in the previous step.

### R
> # Consider the structure of iris, iris.wide and iris.tidy (in that order)
> str(iris)
'data.frame':	150 obs. of  5 variables:
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
> str(iris.wide)
'data.frame':	300 obs. of  4 variables:
 $ Species: Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Part   : chr  "Petal" "Petal" "Petal" "Petal" ...
 $ Length : num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Width  : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
> str(iris.tidy)
'data.frame':	600 obs. of  4 variables:
 $ Species: Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Part   : chr  "Sepal" "Sepal" "Sepal" "Sepal" ...
 $ Measure: chr  "Length" "Length" "Length" "Length" ...
 $ Value  : num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
> 
> 
> 
> # Think about which dataset you would use to get the plot shown right
> # Fill in the ___ to produce the plot given to the right
> ggplot(iris.tidy, aes(x = Species, y = Value, col = Part)) +
    geom_jitter() +
    facet_grid(. ~ Measure)
> 
