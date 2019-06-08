### (1) Selecting elements from a list
# Your list will often be built out of numerous elements and components. 
# Therefore, getting a single element, multiple elements, or a component out of it is not always straightforward.

# One way to select a component is using the numbered position of that component. 
# For example, to "grab" the first component of shining_list you type : shining_list[[1]]
# A quick way to check this out is typing it in the console. 
# Important to remember: to select elements from vectors, you use single square brackets: [ ]. Don't mix them up!

# You can also refer to the names of the components, with [[ ]] or with the $ sign. 
# Both will select the data frame representing the reviews:

shining_list[["reviews"]]
shining_list$reviews
# Besides selecting components, you often need to select specific elements out of these components. 
# For example, with shining_list[[2]][1] you select from the second component, actors (shining_list[[2]]), 
# the first element ([1]). When you type this in the console, you will see the answer is Jack Nicholson.

# (2) Adding more movie information to the list
# Being proud of your first list, you shared it with the members of your movie hobby club. 
# However, one of the senior members, a guy named M. McDowell, noted that you forgot to add the release year. 
# Given your ambitions to become next year's president of the club, you decide to add this information to the list.
# To conveniently add elements to lists you can use the c() function, that you also used to build vectors:

ext_list <- c(my_list , my_val)
# This will simply extend the original list, my_list, with the component my_val. 
# This component gets appended to the end of the list. 
# If you want to give the new list item a name, you just add the name as you did before:

ext_list <- c(my_list, my_name = my_val)


### INSTRUCTIONS
# (1)
# Select from shining_list the vector representing the actors. Simply print out this vector.
# Select from shining_list the second element in the vector representing the actors. Do a printout like before.
# (2)
# Complete the code below such that an item named year is added to the shining_list with the value 1980. 
# Assign the result to shining_list_full. Finally, have a look at the structure of shining_list_full with the str() function.

### R SCRIPT
# (1)
> # shining_list is already pre-loaded in the workspace
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
> # Print out the vector representing the actors
> shining_list$actors
[1] "Jack Nicholson"   "Shelley Duvall"   "Danny Lloyd"      "Scatman Crothers"
[5] "Barry Nelson"
> 
> # Print the second element of the vector representing the actors
> shining_list$actors[2]
[1] "Shelley Duvall"
> 

# (2)
> # shining_list, the list containing movie name, actors and reviews, is pre-loaded in the workspace
> 
> # We forgot something; add the year to shining_list
> shining_list_full <- c(shining_list,year=1980)
> 
> # Have a look at shining_list_full
> str(shining_list_full)
List of 4
 $ moviename: chr "The Shining"
 $ actors   : chr [1:5] "Jack Nicholson" "Shelley Duvall" "Danny Lloyd" "Scatman Crothers" ...
 $ reviews  :'data.frame':	3 obs. of  3 variables:
  ..$ scores  : num [1:3] 4.5 4 5
  ..$ sources : Factor w/ 3 levels "IMDb1","IMDb2",..: 1 2 3
  ..$ comments: Factor w/ 3 levels "A masterpiece of psychological horror",..: 3 2 1
 $ year     : num 1980
> shining_list_full
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

$year
[1] 1980
> 
