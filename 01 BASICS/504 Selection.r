### Only planets with rings
# (1)
# You will often want to select an entire column, namely one specific variable from a data frame. 
# If you want to select all elements of the variable diameter, for example, both of these will do the trick:

planets_df[,3]
planets_df[,"diameter"]

# However, there is a short-cut. If your columns have names, you can use the $ sign:

# You probably remember from high school that some planets in our solar system have rings and others do not. 
# Unfortunately you can not recall their names. Could R help you out?

# If you type rings_vector in the console, you get:

[1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

# (2)
# This means that the first four observations (or planets) do not have a ring (FALSE), but the other four do (TRUE). 
# However, you do not get a nice overview of the names of these planets, their diameter, etc. 
# Let's try to use rings_vector to select the data for the four planets with rings.

# (3)
# You should see the subset() function as a short-cut to do exactly the same as what you did in the previous exercises.
# subset(my_df, subset = some_condition)
# The first argument of subset() specifies the data set for which you want a subset. 
# By adding the second argument, you give R the necessary information and conditions to select the correct subset.
# The code below will give the exact same result as you got in the previous exercise,
# but this time, you didn't need the rings_vector!
subset(planets_df, subset = rings)

### Instructions
# (1)
# Use the $ sign to select the rings variable from planets_df. Store the vector that results as rings_vector.
# Print out rings_vector to see if you got it right.
# (2)
# The code on the right selects the name column of all planets that have rings. 
# Adapt the code so that instead of only the name column, all columns for planets that have rings are selected.
planets_df$diameter
# (3)
# Use subset() on planets_df to select planets that have a diameter smaller than Earth. 
# Because the diameter variable is a relative measure of the planet's diameter w.r.t that of planet Earth, 
# your condition is diameter < 1.

### R SCRIPT
# (1)
> # planets_df is pre-loaded in your workspace
> planets_df
     name               type diameter rotation rings
1 Mercury Terrestrial planet    0.382    58.64 FALSE
2   Venus Terrestrial planet    0.949  -243.02 FALSE
3   Earth Terrestrial planet    1.000     1.00 FALSE
4    Mars Terrestrial planet    0.532     1.03 FALSE
5 Jupiter          Gas giant   11.209     0.41  TRUE
6  Saturn          Gas giant    9.449     0.43  TRUE
7  Uranus          Gas giant    4.007    -0.72  TRUE
8 Neptune          Gas giant    3.883     0.67  TRUE
> # Select the rings variable from planets_df
> rings_vector <- planets_df[,"rings"]
> 
> # Print out rings_vector
> rings_vector
[1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
> 

# (2)
> # Adapt the code to select all columns for planets with rings
> planets_df[rings_vector, ]
     name      type diameter rotation rings
5 Jupiter Gas giant   11.209     0.41  TRUE
6  Saturn Gas giant    9.449     0.43  TRUE
7  Uranus Gas giant    4.007    -0.72  TRUE
8 Neptune Gas giant    3.883     0.67  TRUE

# (3)
> # Select planets with diameter < 1
> subset(planets_df,subset= diameter<1)
     name               type diameter rotation rings
1 Mercury Terrestrial planet    0.382    58.64 FALSE
2   Venus Terrestrial planet    0.949  -243.02 FALSE
4    Mars Terrestrial planet    0.532     1.03 FALSE
> 
