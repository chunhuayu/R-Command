### Calculating total winnings
# Now that you have the poker and roulette winnings nicely as named vectors, 
#you can start doing some data analytical magic.
# You want to find out the following type of information:

# How much has been your overall profit or loss per day of the week?
# Have you lost money over the week in total?
# Are you winning/losing money on poker or on roulette?
# To get the answers, you have to do arithmetic calculations on vectors.

# It is important to know that if you sum two vectors in R, it takes the element-wise sum. 
# For example, the following three statements are completely equivalent:

c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)

# You can also do the calculations with variables that represent vectors:

a <- c(1, 2, 3) 
b <- c(4, 5, 6)
c <- a + b

# Now you understand how R does arithmetic with vectors, it is time to get those Ferraris in your garage! 
# First, you need to understand what the overall profit or loss per day of the week was. 
# The total daily profit is the sum of the profit/loss you realized on poker per day, 
# and the profit/loss you realized on roulette per day.

# In R, this is just the sum of roulette_vector and poker_vector.

# Based on the previous analysis, it looks like you had a mix of good and bad days. This is not what your ego expected, and you wonder if there may be a very tiny chance you have lost money over the week in total?

# A function that helps you to answer this question is sum(). It calculates the sum of all elements of a vector. For example, to calculate the total amount of money you have lost/won with poker you do:

total_poker <- sum(poker_vector)

### INSTRUCTION
# Assign to the variable total_daily how much you won or lost on each day in total (poker and roulette combined).
# Take the sum of the variables A_vector and B_vector and assign it to total_vector.
# Inspect the result by printing out total_vector.
# Calculate the total amount of money that you have won/lost with roulette and assign to the variable total_roulette.
# Now that you have the totals for roulette and poker, you can easily calculate total_week (which is the sum of all gains and losses of the week).
# Print out total_week.


### R SCRIPT
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector
  
# Print out total_vector
total_vector

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- roulette_vector + poker_vector

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_roulette + total_poker

# Print out total_week
total_week
