### Adding a column for the Worldwide box office
# In the previous exercise you calculated the vector that contained the worldwide box office receipt for 
# each of the three Star Wars movies. However, this vector is not yet part of star_wars_matrix.
# You can add a column or multiple columns to a matrix with the cbind() function, 
# which merges matrices and/or vectors together by column. For example: big_matrix <- cbind(matrix1, matrix2, vector1 ...)

###INSTRUCTIONS
# Add worldwide_vector as a new column to the star_wars_matrix and assign the result to all_wars_matrix. Use the cbind() function.

> # Construct star_wars_matrix
> box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
> star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                             dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                             c("US", "non-US")))
> 
> # The worldwide box office figures
> worldwide_vector <- rowSums(star_wars_matrix)
> 
> # Bind the new variable worldwide_vector as a column to star_wars_matrix
> all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)
> all_wars_matrix
                             US non-US worldwide_vector
A New Hope              460.998  314.4          775.398
The Empire Strikes Back 290.475  247.9          538.375
Return of the Jedi      309.306  165.8          475.106
> 


### Adding a row
# Just like every action has a reaction, every cbind() has an rbind(). (We admit, we are pretty bad with metaphors.)
# star_wars_matrix that we have used all along, with data on the original trilogy,
# star_wars_matrix2, with similar data for the prequels trilogy.
# Type the name of these matrices in the console and hit Enter if you want to have a closer look. 
# If you want to check out the contents of the workspace, you can type ls() in the console.

### INSTRUCTIONS
# Use rbind() to paste together star_wars_matrix and star_wars_matrix2, in this order. 
# Assign the resulting matrix to all_wars_matrix.

> ls()
[1] "all_wars_matrix"   "star_wars_matrix"  "star_wars_matrix2"
> # star_wars_matrix and star_wars_matrix2 are available in your workspace
> star_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
> star_wars_matrix2
                        US non-US
The Phantom Menace   474.5  552.5
Attack of the Clones 310.7  338.7
Revenge of the Sith  380.3  468.5
> 
> # Combine both Star Wars trilogies in one matrix
> all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)
> all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5
> 


