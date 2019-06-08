### A little arithmetic with matrices
# Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. 
# work in an element-wise way on matrices in R.
# For example, 2 * my_matrix multiplies each element of my_matrix by two.
# You already have the total revenue figures in all_wars_matrix. Assume that the price of a ticket was 5 dollars. 
# Simply dividing the box office numbers by this ticket price gives you the number of visitors.

### INSTRUCTIONS
# Divide all_wars_matrix by 5, giving you the number of visitors in millions. Assign the resulting matrix to visitors.
# Print out visitors so you can have a look.

> # all_wars_matrix is available in your workspace
> all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5
> 
> # Estimate the visitors
> visitors <- all_wars_matrix/5
> 
> # Print the estimate to the console
> visitors
                           US non-US
A New Hope              92.20  62.88
The Empire Strikes Back 58.10  49.58
Return of the Jedi      61.86  33.16
The Phantom Menace      94.90 110.50
Attack of the Clones    62.14  67.74
Revenge of the Sith     76.06  93.70
> 

### INSTRUCTIONS
# Divide all_wars_matrix by ticket_prices_matrix to get the estimated number of US and non-US visitors for the six movies. 
# Assign the result to visitors.
# From the visitors matrix, select the entire first column, representing the number of visitors in the US. 
# Store this selection as us_visitors.
# Calculate the average number of US visitors; print out the result.

> # all_wars_matrix and ticket_prices_matrix are available in your workspace
> all_wars_matrix
                           US non-US
A New Hope              461.0  314.4
The Empire Strikes Back 290.5  247.9
Return of the Jedi      309.3  165.8
The Phantom Menace      474.5  552.5
Attack of the Clones    310.7  338.7
Revenge of the Sith     380.3  468.5
> ticket_prices_matrix
                         US non-US
A New Hope              5.0    5.0
The Empire Strikes Back 6.0    6.0
Return of the Jedi      7.0    7.0
The Phantom Menace      4.0    4.0
Attack of the Clones    4.5    4.5
Revenge of the Sith     4.9    4.9
> 
> # Estimated number of visitors
> visitors <-  all_wars_matrix / ticket_prices_matrix
> visitors
                               US    non-US
A New Hope               92.20000  62.88000
The Empire Strikes Back  48.41667  41.31667
Return of the Jedi       44.18571  23.68571
The Phantom Menace      118.62500 138.12500
Attack of the Clones     69.04444  75.26667
Revenge of the Sith      77.61224  95.61224
> # US visitors
> us_visitors <- visitors[,1]
> us_visitors
             A New Hope The Empire Strikes Back      Return of the Jedi 
               92.20000                48.41667                44.18571 
     The Phantom Menace    Attack of the Clones     Revenge of the Sith 
              118.62500                69.04444                77.61224
> # Average number of US visitors
> mean(us_visitors)
[1] 75.01401
> 




