### Ordered factors
# (1)
# Since "Male" and "Female" are unordered (or nominal) factor levels, R returns a warning message, \
# telling you that the greater than operator is not meaningful. 
# As seen before, R attaches an equal value to the levels for such factors.

# Sometimes you will also deal with factors that do have a natural ordering between its categories. 
# If this is the case, we have to make sure that we pass this information to R...

# Let us say that you are leading a research team of five data analysts and that you want to evaluate their performance. 
# To do this, you track their speed, evaluate each analyst as "slow", "medium" or "fast", and save the results in speed_vector.

# (2)
# speed_vector should be converted to an ordinal factor since its categories have a natural ordering. 
# By default, the function factor() transforms speed_vector into an unordered factor. 
# To create an ordered factor, you have to add two additional arguments: ordered and levels.

factor(some_vector,
       ordered = TRUE,
       levels = c("lev1", "lev2" ...))
# By setting the argument ordered to TRUE in the function factor(), you indicate that the factor is ordered. 
# With the argument levels you give the values of the factor in the correct order.

# (3)
# Comparing ordered factors
# 'data analyst number two' enters your office and starts complaining that 
# 'data analyst number five' is slowing down the entire project. 
# Since you know that 'data analyst number two' has the reputation of being a smarty-pants,
# you first decide to check if his statement is true.
# The fact that factor_speed_vector is now ordered enables us to compare different elements (the data analysts in this case).
# You can simply do this by using the well-known operators.



### INSTRUCTIONS
# (1)
# As a first step, assign speed_vector a vector with 5 entries, one for each analyst. 
# Each entry should be either "slow", "medium", or "fast". Use the list below:

# Analyst 1 is medium,
# Analyst 2 is slow,
# Analyst 3 is slow,
# Analyst 4 is medium and
# Analyst 5 is fast.
# No need to specify these are factors yet.

# (2)
# From speed_vector, create an ordered factor vector: factor_speed_vector. 
# Set ordered to TRUE, and set levels to c("slow", "medium", "fast").

# (3)
# Use [2] to select from factor_speed_vector the factor value for the second data analyst. Store it as da2.
# Use [5] to select the factor_speed_vector factor value for the fifth data analyst. Store it as da5.
# Check if da2 is greater than da5; simply print out the result. 
# Remember that you can use the > operator to check whether one element is larger than the other.


### R SCRIPT
# (1)
> # Create speed_vector
> speed_vector <-c("medium","slow","slow","medium","fast")

# (2)
> # Convert speed_vector to ordered factor vector
> factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels =c("slow","medium","fast"))
> 
> # Print factor_speed_vector
> factor_speed_vector
[1] medium slow   slow   medium fast  
Levels: slow < medium < fast
> summary(factor_speed_vector)
  slow medium   fast 
     2      2      1
> 

# (3)
> # Create factor_speed_vector
> speed_vector <- c("medium", "slow", "slow", "medium", "fast")
> factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))
> 
> # Factor value for second data analyst
> da2 <- factor_speed_vector[2]
> da2
[1] slow
Levels: slow < medium < fast
> 
> # Factor value for fifth data analyst
> da5 <- factor_speed_vector[5]
> da5
[1] fast
Levels: slow < medium < fast
> 
> # Is data analyst 2 faster than data analyst 5?
> da2 > da5
[1] FALSE
