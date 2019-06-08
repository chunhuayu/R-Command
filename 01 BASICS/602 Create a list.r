### (1) Creating a list
# Let us create our first list! To construct a list you use the function list():

my_list <- list(comp1, comp2 ...)
# The arguments to the list function are the list components. 
# Remember, these components can be matrices, vectors, other lists, ...


### (2) Creating a named list
# why you should give names to them:

my_list <- list(name1 = your_comp1, 
                name2 = your_comp2)
# This creates a list with components that are named name1, name2, and so on.
# If you want to name your lists after you've created them, you can use the names() function as you did with vectors. 
# The following commands are fully equivalent to the assignment above:

my_list <- list(your_comp1, your_comp2)
names(my_list) <- c("name1", "name2")


### (3) Creating a named list
# Start by creating a list for the movie "The Shining". 
# We have already created the variables mov, act and rev in your R workspace. Feel free to check them out in the console.


### INSTRUCTIONS
# (1)
# Construct a list, named my_list, that contains the variables my_vector, my_matrix and my_df as list components.

# (2)
# Change the code of the previous exercise (see editor) by adding names to the components. 
# Use for my_vector the name vec, for my_matrix the name mat and for my_df the name df.
# Print out my_list so you can inspect the output.

# (3)
# Complete the code on the right to create shining_list; it contains three elements:
# moviename: a character string with the movie title (stored in mov)
# actors: a vector with the main actors' names (stored in act)
# reviews: a data frame that contains some reviews (stored in rev)
# Do not forget to name the list components accordingly (names are moviename, actors and reviews).

### R SCRIPT
# (1)
> # Vector with numerics from 1 up to 10
> my_vector <- 1:10
> 
> # Matrix with numerics from 1 up to 9
> my_matrix <- matrix(1:9, ncol = 3)
> 
> # First 10 elements of the built-in data frame mtcars
> my_df <- mtcars[1:10,]
> 
> # Construct list with these different elements:
> my_list <- list(my_vector,my_matrix,my_df)
> my_list
[[1]]
 [1]  1  2  3  4  5  6  7  8  9 10

[[2]]
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

[[3]]
                   mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
Duster 360        14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
Merc 240D         24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230          22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Merc 280          19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
> 

# (2)
> names(my_list) <- c("vec", "mat", "df")
> # Print out my_list
> my_list
$vec
 [1]  1  2  3  4  5  6  7  8  9 10

$mat
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

$df
                   mpg cyl  disp  hp drat    wt  qsec vs am gear carb
Mazda RX4         21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
Mazda RX4 Wag     21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
Datsun 710        22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
Hornet 4 Drive    21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
Hornet Sportabout 18.7   8 360.0 175 3.15 3.440 17.02  0  0    3    2
Valiant           18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
Duster 360        14.3   8 360.0 245 3.21 3.570 15.84  0  0    3    4
Merc 240D         24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
Merc 230          22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
Merc 280          19.2   6 167.6 123 3.92 3.440 18.30  1  0    4    4
>

# (3)
> # The variables mov, act and rev are available
> mov
[1] "The Shining"
> act
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"
> rev
  scores sources                                              comments
1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
3    5.0   IMDb3                 A masterpiece of psychological horror
> # Finish the code to build shining_list
> shining_list <- list(moviename = mov,actors=act,reviews=rev)
> shining_list
$moviename
[1] "The Shining"

$actors
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"    

$reviews
  scores sources                                              comments
1    4.5   IMDb1                     Best Horror Film I Have Ever Seen
2    4.0   IMDb2 A truly brilliant and scary film from Stanley Kubrick
3    5.0   IMDb3                 A masterpiece of psychological horror
> 
