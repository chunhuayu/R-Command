### Write your own function
# (1)
# you're about to write your own function! Before you have a go at it, have a look at the following function template:

my_fun <- function(arg1, arg2) {
  body
}
# Notice that this recipe uses the assignment operator (<-) just as if you were assigning a vector to a variable for example.
# Creating a function in R basically is the assignment of a function object to a variable!
# In the recipe above, you're creating a new R variable my_fun, 
# that becomes available in the workspace as soon as you execute the definition. 
# From then on, you can use the my_fun as a function.

# (2)
# There are situations in which your function does not require an input. 
Let's say you want to write a function that gives us the random outcome of throwing a fair die:

throw_die <- function() {
  number <- sample(1:6, size = 1)
  number
}

throw_die()
# Up to you to code a function that doesn't take any arguments!

# (3)
# Do you still remember the difference between an argument with and without default values?
# Have another look at the sd() function by typing ?sd in the console. The usage section shows the following information:

sd(x, na.rm = FALSE)
# This tells us that x has to be defined for the sd() function to be called correctly, 
# however, na.rm already has a default value. Not specifying this argument won't cause an error.

# You can define default argument values in your own R functions as well. You can use the following recipe to do so:

my_fun <- function(arg1, arg2 = val2) {
  body
}


### INSTRUCTIONS
# (1)
# Create a function pow_two(): it takes one argument and returns that number squared (that number times itself).
# Call this newly defined function with 12 as input.
# Next, create a function sum_abs(), that takes two arguments and returns the sum of the absolute values of both arguments.
# Finally, call the function sum_abs() with arguments -2 and 3 afterwards.

# (2)
# Define a function, hello(). It prints out "Hi there!" and returns TRUE. It has no arguments.
# Call the function hello(), without specifying arguments of course.

# (3)
# Add an optional argument, named print_info, that is TRUE by default.
# Wrap an if construct around the print() function: this function should only be executed if print_info is TRUE.
# Feel free to experiment with the pow_two() function you've just coded.


### R
# (1)
> # Create a function pow_two()
> pow_two<- function (x){
    x**2
  }
> 
> 
> # Use the function
> pow_two(12)
[1] 144
> 
> # Create a function sum_abs()
> sum_abs <- function (a,b){
    abs(a)+abs(b)
  }
> 
> 
> # Use the function
> sum_abs(-2,3)
[1] 5
> 

# (2)
> # Define the function hello()
> hello <- function() {
    print("Hi there!")
    TRUE
  }
> 
> # Call the function hello()
> hello()
[1] "Hi there!"
[1] TRUE
> 

# (3)
> # Finish the pow_two() function
> pow_two <- function(x, print_info=TRUE) {
    y <- x ^ 2
    if (print_info== TRUE){
    print(paste(x, "to the power two equals", y))
    }
    return(y)
  }
> pow_two(5, FALSE)
[1] 25
> 
