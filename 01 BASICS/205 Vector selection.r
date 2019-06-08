###Vector selection: the good times
# (1)
#Your hunch seemed to be right. It appears that the poker game is more your cup of tea than roulette.
# Another possible route for investigation is your performance at the beginning of the working week compared to the end of it.
# You did have a couple of Margarita cocktails at the end of the week...
# To answer that question, you only want to focus on a selection of the total_vector. 
# In other words, our goal is to select specific elements of the vector. 
# To select elements of a vector (and later matrices, data frames, ...), 
# you can use square brackets. Between the square brackets, you indicate what elements to select.
# For example, to select the first element of the vector, you type 
poker_vector[1].
# To select the second element of the vector, you type poker_vector[2],etc. 
# Notice that the first element in a vector has index 1, not 0 as in many other programming languages.

# (2)
# How about analyzing your midweek results?
# To select multiple elements from a vector, you can add square brackets at the end of it. 
# You can indicate between the brackets what elements should be selected. 
# For example: suppose you want to select the first and the fifth day of the week: 
# use the vector c(1, 5) between the square brackets. 
# For example, the code below selects the first and fifth element of poker_vector:
poker_vector[c(1, 5)]

# (3)
# Selecting multiple elements of poker_vector with c(2, 3, 4) is not very convenient. 
# Many statisticians are lazy people by nature, so they created an easier way to do this: c(2, 3, 4) can be abbreviated to2:4,
# which generates a vector with all natural numbers from 2 up to 4.
# So, another way to find the mid-week results is poker_vector[2:4]. 
# Notice how the vector 2:4 is placed between the square brackets to select element 2 up to 4.

# (4)
# Another way to tackle the previous exercise is by using the names of the vector elements (Monday, Tuesday, ...) 
# instead of their numeric positions. For example,
poker_vector["Monday"]
# will select the first element of poker_vector since "Monday" is the name of that first element.
# Just like you did in the previous exercise with numerics, you can also use the element names to select multiple elements, 
poker_vector[c("Monday","Tuesday")]


### Instructions
# (1)
# Assign the poker results of Wednesday to the variable poker_wednesday.
# (2)
# Assign the poker results of Tuesday, Wednesday and Thursday to the variable poker_midweek.
# (3)
# Assign to roulette_selection_vector the roulette results from Tuesday up to Friday; 
# make use of : if it makes things easier for you.
# (4)
# Select the first three elements in poker_vector by using their names: "Monday", "Tuesday" and "Wednesday".
# Assign the result of the selection to poker_start.
# Calculate the average of the values in poker_start with the mean() function. 
# Simply print out the result so you can inspect it.


# (1)
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> # Define a new variable based on a selection
> poker_wednesday <- poker_vector[3]
> 

# (2)
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> # Define a new variable based on a selection
> poker_midweek <- poker_vector[c(2,3,4)]

# (3)
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> # Define a new variable based on a selection
> roulette_selection_vector <- roulette_vector[2:5]
> 

# (4)
> # Poker and roulette winnings from Monday to Friday:
> poker_vector <- c(140, -50, 20, -120, 240)
> roulette_vector <- c(-24, -50, 100, -350, 10)
> days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
> names(poker_vector) <- days_vector
> names(roulette_vector) <- days_vector
> 
> # Select poker results for Monday, Tuesday and Wednesday
> poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]
> 
> # Calculate the average of the elements in poker_start
> mean(poker_start)
[1] 36.66667
