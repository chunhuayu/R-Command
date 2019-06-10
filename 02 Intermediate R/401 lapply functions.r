### Use lapply with a built-in R function

# Before you go about solving the exercises below, have a look at the documentation of the lapply() function. 
# The Usage section shows the following expression:

lapply(X, FUN, ...)

# To put it generally, lapply takes a vector or list X, and applies the function FUN to each of its members.
# If FUN requires additional arguments, you pass them after you've specified X and FUN (...). 
# The output of lapply() is a list, 
# the same length as X, where each element is the result of applying FUN on the corresponding element of X.

# Now that you are truly brushing up on your data science skills, 
# let's revisit some of the most relevant figures in data science history. 
# We've compiled a vector of famous mathematicians/statisticians and the year they were born.
# Up to you to extract some information!

### INSTRUCTION
# Have a look at the strsplit() calls, that splits the strings in pioneers on the : sign. 
# The result, split_math is a list of 4 character vectors: the first vector element represents the name, 
# the second element the birth year.
# Use lapply() to convert the character vectors in split_math to lowercase letters: 
# apply tolower() on each of the elements in split_math. Assign the result, which is a list, to a new variable split_low.
# Finally, inspect the contents of split_low with str().

### R
# (1)
> # The vector pioneers has already been created for you
> pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
> 
> # Split names from birth year
> split_math <- strsplit(pioneers, split = ":")
> 
> # Convert to lowercase strings: split_low
> split_low <- lapply(split_math, tolower)
> 
> # Take a look at the structure of split_low
> str(split_low)
List of 4
 $ : chr [1:2] "gauss" "1777"
 $ : chr [1:2] "bayes" "1702"
 $ : chr [1:2] "pascal" "1623"
 $ : chr [1:2] "pearson" "1857"
> 

# (2)
> # Write function select_first()
> select_first <- function(x) {
    x[1]
  }
> 
> # Apply select_first() over split_low: names
> names <- lapply(split_low,select_first)
> 
> # Write function select_second()
> select_second <- function(x) {
    x[2]
  }
> 
> 
> # Apply select_second() over split_low: years
> years <- lapply(split_low,select_second)
> 
