col=
shape=
size=
alpha=
fill=
label=

### (1)

In the video you saw 9 visible aesthetics. Let's apply them to a categorical variable - the cylinders in mtcars, cyl.

(You'll consider line type when you encounter line plots in the next chapter).

These are the aesthetics you can consider within aes() in this chapter: x, y, color, fill, size, alpha, labels and shape.

In the following exercise you can assume that the cyl column is categorical. It has already been transformed into a factor for you.

Instructions
100 XP
The mtcars data frame is available in your workspace. For each of the following four plots, use geom_point():

1 - Map mpg onto the x aesthetic, and cyl onto the y.
2 - Reverse the mappings of the first plot.
3 - Map wt onto x, mpg onto y, and cyl onto color.
Modify the previous plot by changing the shape argument of the geom to 1 and increase the size to 4. These are attributes that you should specify inside geom_point().


### R
> # 1 - Map mpg to x and cyl to y
> ggplot(mtcars, aes(mpg, cyl)) +
    geom_point()
> 
> # 2 - Reverse: Map cyl to x and mpg to y
> ggplot(mtcars, aes(cyl, mpg)) +
    geom_point()
> 
> # 3 - Map wt to x, mpg to y and cyl to col
> ggplot(mtcars, aes(wt, mpg, col=cyl)) +
    geom_point()
> 
> # 4 - Change shape and size of the points in the above plot
> ggplot(mtcars, aes(wt, mpg, col=cyl)) +
    geom_point(shape=1, size=4)
> 


### (2)
The color aesthetic typically changes the outside outline of an object and the fill aesthetic is typically the inside shading. However, as you saw in the last exercise, geom_point() is an exception. Here you use color, instead of fill for the inside of the point. But it's a bit subtler than that.

Which shape to use? The default geom_point() uses shape = 19 (a solid circle with an outline the same colour as the inside). Good alternatives are shape = 1 (hollow) and shape = 16 (solid, no outline). These all use the col aesthetic (don't forget to set alpha for solid points).

A really nice alternative is shape = 21 which allows you to use both fill for the inside and col for the outline! This is a great little trick for when you want to map two aesthetics to a dot.

What happens when you use the wrong aesthetic mapping? This is a very common mistake! The code from the previous exercise is in the editor. Using this as your starting point complete the instructions.

Instructions
100 XP
Note: In the mtcars dataset, cyl and am have been converted to factor for you.

1 - Copy & paste the first plot's code. Change the aesthetics so that cyl maps to fill rather than col.
2 - Copy & paste the second plot's code. In geom_point() change the shape argument to 21 and add an alpha argument set to 0.6.
3 - Copy & paste the third plot's code. In the ggplot() aesthetics, map am to col.

### R
> # am and cyl are factors, wt is numeric
> class(mtcars$am)
[1] "factor"
> class(mtcars$cyl)
[1] "factor"
> class(mtcars$wt)
[1] "numeric"
> 
> # From the previous exercise
> ggplot(mtcars, aes(x = wt, y = mpg, col = cyl)) +
    geom_point(shape = 1, size = 4)
> 
> # 1 - Map cyl to fill
> ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
    geom_point(shape = 1, size = 4)
> 
> 
> # 2 - Change shape and alpha of the points in the above plot
> ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
    geom_point(shape = 21, size = 4, alpha=0.6)
> 
> 
> # 3 - Map am to col in the above plot
> ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl,col=am)) +
    geom_point(shape = 21, size = 4, alpha=0.6)
> 
> 


### (3)

### INSTRUCTIONS:
# Use ggplot() to create a basic scatter plot. Inside aes(), map wt onto x and mpg onto y. 
# Typically, you would say "mpg described by wt" or "mpg vs wt", but in aes(), it's x first, y second. 
# Use geom_point() to make three scatter plots:

# cyl on size
# cyl on alpha
# cyl on shape
# Try this last variant: cyl on label. In order to correctly show the text (i.e. label), use geom_text().

### R
> # Map cyl to alpha
> ggplot(mtcars, aes(x = wt, y = mpg, alpha = cyl)) +
    geom_point()
> 
> # Map cyl to shape
> ggplot(mtcars, aes(x = wt, y = mpg, shape = cyl)) +
    geom_point()
> 
> # Map cyl to labels
> ggplot(mtcars, aes(x = wt, y = mpg, label = cyl)) +
    geom_text()


### (4)
# 1.Add to the first command: draw points with alpha set to 0.5.
# 2.Add to the second command: draw points of shape 24 in the color yellow.
# 3.Add to the third command: draw text with label rownames(mtcars) in the color red. Don't use geom_point() here! 
# ..You should get a scatter plot with the names of the cars instead of points.
# Note: Remember to specify characters with quotation marks ("yellow", not yellow).

### R
> # Expand to draw points with alpha 0.5
> ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +
  geom_point(alpha=0.5)
> 
> # Expand to draw points with shape 24 and color yellow
> ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl)) +geom_point(shape=24,col="yellow")
> 
> 
> # Expand to draw text with label rownames(mtcars) and color red
> ggplot(mtcars, aes(x = wt, y = mpg, fill = cyl, label=rownames(mtcars))) + geom_text(color="red")
> 

