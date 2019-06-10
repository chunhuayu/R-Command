### sapply with your own function
# (1)
# Like lapply(), sapply() allows you to use self-defined functions and apply them over a vector or a list:
sapply(X, FUN, ...)
# Here, FUN can be one of R's built-in functions, but it can also be a function you wrote. 
# This self-written function can be defined before hand, or can be inserted directly as an anonymous function.

# (2)
# sapply with function returning vector
# In the previous exercises, 
# you've seen how sapply() simplifies the list that lapply() would return by turning it into a vector. 
# But what if the function you're applying over a list or a vector returns a vector of length greater than 1?
# If you don't remember from the video, don't waste more time in the valley of ignorance and head over to the instructions!


### INSTRUCTIONS
# (1)
# Finish the definition of extremes_avg(): it takes a vector of temperatures and calculates the average of the minimum and 
# maximum temperatures of the vector.
# Next, use this function inside sapply() to apply it over the vectors inside temp.
# Use the same function over temp with lapply() and see how the outputs differ.

# (2)
Finish the definition of the extremes() function. It takes a vector of numerical values and returns a vector containing the minimum and maximum values of a given vector, with the names "min" and "max", respectively.
Apply this function over the vector temp using sapply().
Finally, apply this function over the vector temp using lapply() as well.


### R
# (1)
> # temp is already defined in the workspace
> temp
[[1]]
[1]  3  7  9  6 -1

[[2]]
[1]  6  9 12 13  5

[[3]]
[1]  4  8  3 -1 -3

[[4]]
[1]  1  4  7  2 -2

[[5]]
[1] 5 7 9 4 2

[[6]]
[1] -3  5  8  9  4

[[7]]
[1] 3 6 9 4 1
> # Finish function definition of extremes_avg
> extremes_avg <- function(x) {
    ( min(x) + max(x) ) / 2
  }
> 
> # Apply extremes_avg() over temp using sapply()
> sapply(temp,extremes_avg)
[1] 4.0 9.0 2.5 2.5 5.5 3.0 5.0
> 
> # Apply extremes_avg() over temp using lapply()
> lapply(temp,extremes_avg)
[[1]]
[1] 4

[[2]]
[1] 9

[[3]]
[1] 2.5

[[4]]
[1] 2.5

[[5]]
[1] 5.5

[[6]]
[1] 3

[[7]]
[1] 5
> 

# (2)
> # temp is already available in the workspace
> 
> # Create a function that returns min and max of a vector: extremes
> extremes <- function(x) {
    c(min = min(x), max = max(x))
  }
> 
> # Apply extremes() over temp with sapply()
> sapply(temp,extremes)
    [,1] [,2] [,3] [,4] [,5] [,6] [,7]
min   -1    5   -3   -2    2   -3    1
max    9   13    8    7    9    9    9
> 
> # Apply extremes() over temp with lapply()
> lapply(temp,extremes)
[[1]]
min max 
 -1   9 

[[2]]
min max 
  5  13 

[[3]]
min max 
 -3   8 

[[4]]
min max 
 -2   7 

[[5]]
min max 
  2   9 

[[6]]
min max 
 -3   9 

[[7]]
min max 
  1   9
  
> class(sapply(temp,extremes))
[1] "matrix"
> class(lapply(temp,extremes))
[1] "list"
