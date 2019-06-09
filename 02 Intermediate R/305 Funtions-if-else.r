### function
# Now that you've acquired some skills in defining functions with different types of arguments and return values, 
# you should try to create more advanced functions. As you've noticed in the previous exercises, 
# it's perfectly possible to add control-flow constructs, loops and even other functions to your function body.

# Remember our social media example? 
# The vectors linkedin and facebook are already defined in the workspace so you can get your hands dirty straight away. 
# As a first step, you will be writing a function that can interpret a single value of this vector. 
# In the next exercise, you will write another function that can handle an entire vector at once.

### INSTRUCTIONS
# (1)
# Finish the function definition for interpret(), that interprets the number of profile views on a single day:
# The function takes one argument, num_views.
# If num_views is greater than 15, the function prints out "You're popular!" to the console and returns num_views.
# Else, the function prints out "Try to be more visible!" and returns 0.
# Finally, call the interpret() function twice: 
# on the first value of the linkedin vector and on the second element of the facebook vector.

# (2)
# Finish the template for the interpret_all() function:
# Make return_sum an optional argument, that is TRUE by default.
# Inside the for loop, iterate over all views: on every iteration, add the result of interpret(v) to count. Remember that interpret(v) returns v for popular days, and 0 otherwise. At the same time, interpret(v) will also do some printouts.
# Finish the if construct:
# If return_sum is TRUE, return count.
# Else, return NULL.
# Call this newly defined function on both linkedin and facebook.



### R
# (1)
> # The linkedin and facebook vectors have already been created for you
> 
> # Define the interpret function
> interpret <- function(num_views) {
    if (num_views > 15) {
  print("You're popular!")
  return(num_views)
    } else {
  print("Try to be more visible!")
  return(0)
    }
  }
> 
> # Call the interpret function twice
> interpret(linkedin)
Warning message: the condition has length > 1 and only the first element will be used
[1] "You're popular!"
[1] 16  9 13  5  2 17 14
> interpret(facebook[2])
[1] "Try to be more visible!"
[1] 0
> 

# (2)
> # The linkedin and facebook vectors have already been created for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> facebook <- c(17, 7, 5, 16, 8, 13, 14)
> 
> # The interpret() can be used inside interpret_all()
> interpret <- function(num_views) {
    if (num_views > 15) {
      print("You're popular!")
      return(num_views)
    } else {
      print("Try to be more visible!")
      return(0)
    }
  }
> 
> # Define the interpret_all() function
> # views: vector with data to interpret
> # return_sum: return total number of views on popular days?
> interpret_all <- function(views, return_sum =TRUE) {
    count <- 0
  
    for (v in views) {
  count = interpret(v)+count
    }
  
    if (return_sum) {
  return(count)
    } else {
  return(NULL)
    }
  }
> 
> # Call the interpret_all() function on both linkedin and facebook
> interpret_all(linkedin)
[1] "You're popular!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "You're popular!"
[1] "Try to be more visible!"
[1] 33
> interpret_all(facebook)
[1] "You're popular!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "You're popular!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] "Try to be more visible!"
[1] 33
