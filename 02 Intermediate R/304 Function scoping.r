### Function scoping 
# (1)
# An issue that Filip did not discuss in the video is function scoping. It implies that variables that are defined inside a function are not accessible outside that function. Try running the following code and see if you understand the results:

pow_two <- function(x) {
  y <- x ^ 2
  return(y)
}
pow_two(4)
y
x
# y was defined inside the pow_two() function and therefore it is not accessible outside of that function. 
# This is also true for the function's arguments of course - x in this case.

# Which statement is correct about the following chunk of code? 
# The function two_dice() is already available in the workspace.

two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}

### Instructions

Possible Answers
# A. Executing two_dice() causes an error.
# B. Executing res <- two_dice() makes the contents of dice1 and dice2 available outside the function.
# C. Whatever the way of calling the two_dice() function, R won't have access to dice1 and dice2 outside the function.

# correct answer is C

# (2)
# R passes arguments by value
# The title gives it away already: R passes arguments by value. What does this mean? Simply put, 
# it means that an R function cannot change the variable that you input to that function. 
# Let's look at a simple example (try it in the console):

triple <- function(x) {
  x <- 3*x
  x
}
a <- 5
triple(a)
a

# (3)
# Can you tell which one of the following statements is false about the following piece of code?
increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)

# Possible Answers
# A. a and b equal 7 and 6 respectively after executing this code block.
# B. After the first call of increment(), where a is defined, a equals 7 and count equals 5.
# C. In the end, count will equal 10.
# D. In the last expression, the value of count was actually changed because of the explicit assignment.

# the answer is C. In the end, count will equal 7
