###Selection by comparison
# (1)
# By making use of comparison operators, we can approach the previous question in a more proactive way.
# The (logical) comparison operators known to R are:

< for less than
> for greater than
<= for less than or equal to
>= for greater than or equal to
== for equal to each other
!= not equal to each other
# As seen in the previous chapter, stating 6 > 5 returns TRUE. The nice thing about R is that you can use these comparison operators also on vectors. For example:

> c(4, 5, 6) > 5
[1] FALSE FALSE TRUE
# This command tests for every element of the vector if the condition stated by the comparison operator is TRUE or FALSE.

# (2)
# Working with comparisons will make your data analytical life easier. 
# Instead of selecting a subset of days to investigate yourself (like before), 
# you can simply ask R to return only those days where you realized a positive return for poker.
# In the previous exercises is to find the days on which you had a positive poker return.
# Now, you would like to know not only the days on which you won, but also how much you won on those days.
# You can select the desired elements, by putting selection_vector between the square brackets that follow poker_vector:
poker_vector[selection_vector]
# R knows what to do when you pass a logical vector in square brackets: 
# it will only select the elements that correspond to TRUE in selection_vector.

### INSTRUCTIONS
# (1)
# Check which elements in poker_vector are positive (i.e. > 0) and assign this to selection_vector.
# Print out selection_vector so you can inspect it. 
# The printout tells you whether you won (TRUE) or lost (FALSE) any money for each day.
# (2)
# Use selection_vector in square brackets to assign the amounts that you won on the profitable days to 
# the variable poker_winning_days.

# (1)
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Which days did you make money on poker?
> selection_vector <- poker_vector>0
> 
> # Print out selection_vector
> selection_vector
   Monday   Tuesday Wednesday  Thursday    Friday 
     TRUE     FALSE      TRUE     FALSE      TRUE
> 

# (2)
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Which days did you make money on poker?
> selection_vector <- poker_vector > 0
> 
> # Select from poker_vector these days
> poker_winning_days <- poker_vector[selection_vector]
> 
