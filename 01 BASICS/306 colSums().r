### The total box office revenue for the entire saga
# Just like cbind() has rbind(), colSums() has rowSums(). 
# Your R workspace already contains the all_wars_matrix that you constructed in the previous exercise; 
# type all_wars_matrix to have another look. Let's now calculate the total box office revenue for the entire saga.

### INSTRUCTIONS
# Calculate the total revenue for the US and the non-US region and assign total_revenue_vector. 
# You can use the colSums() function.
# Print out total_revenue_vector to have a look at the results.

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
> # Total revenue for US and non-US
> total_revenue_vector <- colSums(all_wars_matrix)
> 
> # Print out total_revenue_vector
> total_revenue_vector
    US non-US 
2226.3 2087.8
> 
