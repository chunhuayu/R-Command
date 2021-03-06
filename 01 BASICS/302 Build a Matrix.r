### Analyze matrices, you shall
# It is now time to get your hands dirty. 
# In the following exercises you will analyze the box office numbers of the Star Wars franchise. 
# In the editor, three vectors are defined. Each one represents the box office numbers from the first three Star Wars movies. 
# The first element of each vector indicates the US box office revenue, 
# the second element refers to the Non-US box office (source: Wikipedia).
# In this exercise, you'll combine all these figures into a single vector. Next, you'll build a matrix from this vector.

### INSTRUCTIONS
# Use c(new_hope, empire_strikes, return_jedi) to combine the three vectors into one vector. Call this vector box_office.
# Construct a matrix with 3 rows, where each row represents a movie. Use the matrix() function to do this. 
# The first argument is the vector box_office, containing all box office figures. 
# Next, you'll have to specify nrow = 3 and byrow = TRUE. Name the resulting matrix star_wars_matrix.

> # Box office Star Wars (in millions!)
> new_hope <- c(460.998, 314.4)
> empire_strikes <- c(290.475, 247.900)
> return_jedi <- c(309.306, 165.8)
> 
> # Create box_office
> box_office <- c(new_hope, empire_strikes, return_jedi)
> 
> # Construct star_wars_matrix
> star_wars_matrix <- matrix(box_office,byrow= TRUE, nrow=3)
> star_wars_matrix
        [,1]  [,2]
[1,] 460.998 314.4
[2,] 290.475 247.9
[3,] 309.306 165.8
> 
