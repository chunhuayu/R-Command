### Use vapply

# (1) 
# you'll learn about in this intermediate R course, let's take a look at its syntax. 
# The function is called vapply(), and it has the following syntax:

vapply(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE)
# Over the elements inside X, the function FUN is applied. 
# The FUN.VALUE argument expects a template for the return argument of this function FUN. 
# USE.NAMES is TRUE by default; in this case vapply() tries to generate a named array, if possible.

# For the next set of exercises, you'll be working on the temp list again, that contains 7 numerical vectors of length 5. 
# We also coded a function basics() that takes a vector, 
# and returns a named vector of length 3, containing the minimum, mean and maximum value of the vector respectively.

# (2)
# So far you've seen that vapply() mimics the behavior of sapply() if everything goes according to plan. 
# But what if it doesn't?

# In the video, Filip showed you that there are cases where the structure of the output of the function you want to apply, 
# FUN, does not correspond to the template you specify in FUN.VALUE. 
# In that case, vapply() will throw an error that informs you about the misalignment between expected and actual output.

# (3)
# As highlighted before, vapply() can be considered a more robust version of sapply(), 
# because you explicitly restrict the output of the function you want to apply. 


### INSTRUCTIONS
# (1) 
# Apply the function basics() over the list of temperatures, temp, using vapply(). 
# This time, you can use numeric(3) to specify the FUN.VALUE argument.
# (2)
# Inspect the code on the right and try to run it. If you haven't changed anything, an error should pop up. 
# That's because vapply() still expects basics() to return a vector of length 3. 
# The error message gives you an indication of what's wrong.
# Try to fix the error by editing the vapply() command.
# (3)
# Convert all the sapply() expressions on the right to their vapply() counterparts. Their results should be exactly the same; 
# you're only adding robustness. You'll need the templates numeric(1) and logical(1).


# (1)
> # temp is already available in the workspace
> 
> # Definition of basics()
> basics <- function(x) {
    c(min = min(x), mean = mean(x), max = max(x))
  }
> 
> # Apply basics() over temp using vapply()
> vapply(temp,basics,numeric(3))
     [,1] [,2] [,3] [,4] [,5] [,6] [,7]
min  -1.0    5 -3.0 -2.0  2.0 -3.0  1.0
mean  4.8    9  2.2  2.4  5.4  4.6  4.6
max   9.0   13  8.0  7.0  9.0  9.0  9.0
> 


# (2)
> # temp is already available in the workspace
> 
> # Definition of the basics() function
> basics <- function(x) {
    c(min = min(x), mean = mean(x), median = median(x), max = max(x))
  }
> 
> # Fix the error:
> vapply(temp, basics, numeric(3))
Error: values must be length 3,
 but FUN(X[[1]]) result is length 4
> # temp is already available in the workspace
> 
> # Definition of the basics() function
> basics <- function(x) {
    c(min = min(x), mean = mean(x), median = median(x), max = max(x))
  }
> 
> # Fix the error:
> vapply(temp, basics, numeric(4))
       [,1] [,2] [,3] [,4] [,5] [,6] [,7]
min    -1.0    5 -3.0 -2.0  2.0 -3.0  1.0
mean    4.8    9  2.2  2.4  5.4  4.6  4.6
median  6.0    9  3.0  2.0  5.0  5.0  4.0
max     9.0   13  8.0  7.0  9.0  9.0  9.0

# (3)
> # temp is already defined in the workspace
> 
> # Convert to vapply() expression
> vapply(temp, max,numeric(1))
[1]  9 13  8  7  9  9  9
> 
> # Convert to vapply() expression
> vapply(temp, function(x, y) { mean(x) > y }, y = 5,logical(1))
[1] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
> 
