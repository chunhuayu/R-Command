### Some naming conventions:

# Scatter plots:
# Continuous x, continuous y.
# Dot plots:
# Categorical x, continuous y.
# You use geom_point() for both plot types. Jittering position is set in the geom_point() layer.

# However, to make a "true" dot plot, you can use geom_dotplot(). 
# The difference is that unlike geom_point(), geom_dotplot() uses a binning statistic. 
# Binning means to cut up a continuous variable (the y in this case) into discrete "bins". 
# You already saw binning with geom_histogram() (see this exercise for a refresher).

# One thing to notice is that geom_dotplot() uses a different plotting symbol to geom_point(). 
# For these symbols, the color aesthetic changes the color of its border, 
## and the fill aesthetic changes the color of its interior.
# Let's take a look at how the two geoms compare.

### Instructions
# A "basic" dot plot is shown in the viewer (see the code in the editor). 
# Here, cyl (categorical) is mapped onto the x and wt (continuous) is mapped onto the y aesthetic. 
# For this exercise we've already converted am to a factor variable for you.

# 1 - Re-draw that plot in the viewer as a "true" dot plot.
# Add a dotplot geom by calling geom_dotplot().
$ Set the arguments stackdir = "center" and binaxis = "y". 
# ....but take a look at the help pages and try different settings to get familiar with these arguments.

# 2 - Convert the previous ggplot() command to a qplot() command.

> # cyl and am are factors, wt is numeric
> class(mtcars$cyl)
[1] "factor"
> class(mtcars$am)
[1] "factor"
> class(mtcars$wt)
[1] "numeric"
> 
> # "Basic" dot plot, with geom_point():
> ggplot(mtcars, aes(cyl, wt, col = am)) +
    geom_point(position = position_jitter(0.2, 0))
> 
> # 1 - "True" dot plot, with geom_dotplot():
> ggplot(mtcars, aes(cyl, wt, fill = am)) +
    geom_dotplot(binaxis = "y", stackdir = "center")
`stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
> 
> # 2 - qplot with geom "dotplot", binaxis = "y" and stackdir = "center"
> qplot(
   cyl, wt,
    data = mtcars,
    fill = am,
    geom = "dotplot",
    binaxis = "y",
    stackdir = "center"
  )
`stat_bindot()` using `bins = 30`. Pick better value with `binwidth`.
> 
