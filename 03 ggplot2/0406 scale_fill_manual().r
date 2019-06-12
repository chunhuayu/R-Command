### (1) Bar plots with color ramp, part 1

# In this example of a bar plot, you'll fill each segment according to an ordinal variable. 
# The best way to do that is with a sequential color series.

# You'll be using the Vocab dataset from earlier. Since this is a much larger dataset with more categories, 
# you'll also compare it to a simpler dataset, mtcars. Both datasets are ordinal.

### INSTRUCTIONS
# 1. The bar plot from the previous exercise is provided - cyl is on the x-axis and filled according to transmission type, am. 
# ...Notice how you can set the color palette used to fill the bars with scale_fill_brewer(). 
# ...For a full list of possible color sets, have a look at ?brewer.pal.

# 2. Explore Vocab with str(). 
# ...Notice that the education and vocabulary variables have already been converted to factor variables for you.

# 3. Make a filled bar chart with the Vocab dataset.
# ...Map education to x and vocabulary to fill.
# ...Inside geom_bar(), make sure to set position = "fill".
# ...Allow color brewer to choose a default color palette by using the appropriate scale function, without arguments. 
# ...Notice how this generates a warning message and an incomplete plot.


### R

> # Example of how to use a brewed color palette
> ggplot(mtcars, aes(x = cyl, fill = am)) +
    geom_bar() +
    scale_fill_brewer(palette = "Set1")
> 
> # Use str() on Vocab to check out the structure
> str(Vocab)
'data.frame':	21638 obs. of  4 variables:
 $ year      : int  2004 2004 2004 2004 2004 2004 2004 2004 2004 2004 ...
 $ sex       : Factor w/ 2 levels "Female","Male": 1 1 2 1 2 2 1 2 2 1 ...
 $ education : Factor w/ 21 levels "0","1","2","3",..: 10 15 15 18 15 15 13 11 12 10 ...
 $ vocabulary: Factor w/ 11 levels "0","1","2","3",..: 4 7 10 9 2 8 7 7 6 2 ...
> 
> # Plot education on x and vocabulary on fill
> # Use the default brewed color palette
> ggplot(Vocab, aes(x = education, fill = vocabulary)) +
    geom_bar(position = "fill") +
    scale_fill_brewer(palette = "Set1")
Warning message: n too large, allowed maximum for palette Set1 is 9
Returning the palette you asked for with that many colors
> 
> 
### (2) Bar plots with color ramp
# 1. In the previous exercise, you ended up with an incomplete bar plot. 
# ...This was because for continuous data, the default RColorBrewer palette that scale_fill_brewer() calls is "Blues". 
# ...There are only 9 colours in the palette, and since you have 11 categories, your plot looked strange.

# 2. In this exercise, you'll manually create a color palette that can generate all the colours you need. 
# ...To do this you'll use a function called colorRampPalette().

# 3. The input is a character vector of 2 or more colour values, e.g. "#FFFFFF" (white) and "#0000FF" (pure blue). 
# ...(See this exercise for a discussion on hexadecimal codes).

# 4. The output is itself a function! So when you assign it to an object, that object should be used as a function. 
# ...To see what we mean, execute the following three lines in the console:

new_col <- colorRampPalette(c("#FFFFFF", "#0000FF"))
new_col(4) # the newly extrapolated colours
munsell::plot_hex(new_col(4)) # Quick and dirty plot
# new_col() is a function that takes one argument: the number of colours you want to extrapolate. 
# You want to use nicer colours, 
# so we've assigned the entire "Blues" colour palette from the RColorBrewer package to the character vector blues.

### Instructions
# 1 - create a new function called blue_range that 
# ....uses colorRampPalette() to extrapolate over all 9 values of the blues character vector.

# 2 - Take the plot code from the last exercise (provided), and change scale_fill_brewer() to be scale_fill_manual(). 
# ....Set the argument values = blue_range(11) inside scale_fill_manual().

### R
> # Final plot of last exercise
> ggplot(Vocab, aes(x = education, fill = vocabulary)) +
    geom_bar(position = "fill") +
    scale_fill_brewer()
Warning message: n too large, allowed maximum for palette Blues is 9
Returning the palette you asked for with that many colors
> 
> # Definition of a set of blue colors
> blues <- brewer.pal(9, "Blues") # from the RColorBrewer package
> 
> # 1 - Make a color range using colorRampPalette() and the set of blues
> blue_range <- colorRampPalette(blues)
> 
> # 2 - Use blue_range to adjust the color of the bars, use scale_fill_manual(col=blue_range)
> 
> ggplot(Vocab, aes(x = education, fill = vocabulary)) +
    geom_bar(position = "fill") +
    scale_fill_manual( values=blue_range(11))
> 
