### How to use sapply

# You can use sapply() similar to how you used lapply(). The first argument of sapply() is the list or vector X over
# which you want to apply a function, FUN. Potential additional arguments to this function are specified afterwards (...):

sapply(X, FUN, ...)
# In the next couple of exercises, you'll be working with the variable temp, that contains temperature measurements for 7 days.
# temp is a list of length 7, where each element is a vector of length 5, representing 5 measurements on a given day. 
# This variable has already been defined in the workspace: type str(temp) to see its structure.

### INSTRUCTIONS
# Use lapply() to calculate the minimum (built-in function min()) of the temperature measurements for every day.
# Do the same thing but this time with sapply(). See how the output differs.
# Use lapply() to compute the the maximum (max()) temperature for each day.
# Again, use sapply() to solve the same question and see how lapply() and sapply() differ.

### R
> # temp has already been defined in the workspace
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
> # Use lapply() to find each day's minimum temperature
> lapply(temp,min)
[[1]]
[1] -1

[[2]]
[1] 5

[[3]]
[1] -3

[[4]]
[1] -2

[[5]]
[1] 2

[[6]]
[1] -3

[[7]]
[1] 1
> 
> # Use sapply() to find each day's minimum temperature
> 
> sapply(temp,min)
[1] -1  5 -3 -2  2 -3  1
> # Use lapply() to find each day's maximum temperature
> lapply(temp,max)
[[1]]
[1] 9

[[2]]
[1] 13

[[3]]
[1] 8

[[4]]
[1] 7

[[5]]
[1] 9

[[6]]
[1] 9

[[7]]
[1] 9
> 
> # Use sapply() to find each day's maximum temperature
> sapply(temp,max)
[1]  9 13  8  7  9  9  9
> 
