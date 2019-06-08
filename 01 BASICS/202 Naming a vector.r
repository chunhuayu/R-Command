### Naming a vector
# In the previous exercise, we created a vector with your winnings over the week. 
# Each vector element refers to a day of the week but it is hard to tell which element belongs to which day. 
# It would be nice if you could show that in the vector itself.
# You can give a name to the elements of a vector with the names() function. Have a look at this example:

some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")

# This code first creates a vector some_vector and then gives the two elements a name. 
# The first element is assigned the name Name, while the second element is labeled Profession. 
# Printing the contents to the console yields following output:

#          Name     Profession 
#    "John Doe" "poker player" 


# there is a more efficient way to do this, namely, to assign the days of the week vector to a variable!
# Just like you did with your poker and roulette returns, you can also create a variable that contains the days of the week. This way you can use and re-use it.

### INSTRUCTIONS
# A variable days_vector that contains the days of the week has already been created for you.
# Use days_vector to set the names of poker_vector and roulette_vector.
# The code on the right names the elements in poker_vector with the days of the week. 
# Add code to do the same thing for roulette_vector.

### R SCRIPT
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
 
# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector

