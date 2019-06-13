### INSTRUCTIONS
# 1 - Execute head(ChickWeight) to check the first few rows of this dataset. Looks like the data is pretty tidy!
# 2 - Plot a line for each chick.
# Use ggplot() and map Time to x and weight to y within the aes() function.
# Add geom_line() at the end to draw the lines.
# To draw one line per chick, add group = Chick to the aes() of geom_line().
# Oops! That looks pretty chaotic and you can't really conclude anything from it. Let's try again.
# 3 - Take plot 2 and add color = Diet within the aes() of ggplot(). There's some more information here, although it would be better to have some summary statistics as well. What do you think would be helpful?
# 4 - Take plot 3 and add geom_smooth() with attributes lwd set to 2 and se set to FALSE. Inside geom_line(), set alpha of to 0.3.


> # ChickWeight is available in your workspace
> # 1 - Check out the head of ChickWeight
> head(ChickWeight)
  weight Time Chick Diet
1     42    0     1    1
2     51    2     1    1
3     59    4     1    1
4     64    6     1    1
5     76    8     1    1
6     93   10     1    1
> 
> # 2 - Basic line plot
> ggplot(ChickWeight, aes(x = Time, y = weight)) +
    geom_line(aes(group = Chick))
> 
> # 3 - Take plot 2, map Diet onto col.
> ggplot(ChickWeight, aes(x = Time, y = weight,col=Diet)) +
    geom_line(aes(group = Chick))
> 
> 
> # 4 - Take plot 3, add geom_smooth()
> ggplot(ChickWeight, aes(x = Time, y = weight,col=Diet)) +
    geom_line(aes(group = Chick),alpha=0.3)+geom_smooth(lwd=2,se= FALSE,)
`geom_smooth()` using method = 'loess'
> 
> 
