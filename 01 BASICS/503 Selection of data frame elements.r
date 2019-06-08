### Selection of data frame elements
# (1)
# Similar to vectors and matrices, you select elements from a data frame with the help of square brackets [ ]. 
# By using a comma, you can indicate what to select from the rows and the columns respectively. For example:

my_df[1,2] # selects the value at the first row and second column in my_df.
my_df[1:3,2:4] # selects rows 1, 2, 3 and columns 2, 3, 4 in my_df.

# Sometimes you want to select all elements of a row or column. For example, my_df[1, ] selects all elements of the first row.
# Let us now apply this technique on planets_df!

# (2)
# Instead of using numerics to select elements of a data frame, 
# you can also use the variable names to select columns of a data frame.

# Suppose you want to select the first three elements of the type column. One way to do this is
planets_df[1:3,2]
# A possible disadvantage of this approach is that you have to know (or look up) the column number of type,
# which gets hard if you have a lot of variables. It is often easier to just make use of the variable name:
planets_df[1:3,"type"]


### INSTRUCTIONS
# (1)
# From planets_df, select the diameter of Mercury: this is the value at the first row and the third column. 
# Simply print out the result.
# From planets_df, select all data on Mars (the fourth row). Simply print out the result.
# (2)
# Select and print out the first 5 values in the "diameter" column of planets_df.


### R SCRIPT
# (1)
> # The planets_df data frame from the previous exercise is pre-loaded
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
> # Print out diameter of Mercury (row 1, column 3)
> planets_df[1,3]
[1] 0.382
> 
> # Print out data for Mars (entire fourth row)
> planets_df[4,]
  name               type diameter rotation rings
4 Mars Terrestrial planet    0.532     1.03 FALSE
> 
# (2)
> # Select first 5 values of diameter column
> planets_df[1:5,"diameter"]
[1]  0.382  0.949  1.000  0.532 11.209
> 
