### Mix it up with control flow

# Let's return to the LinkedIn profile views data, stored in a vector linkedin. 
# In the first exercise on for loops you already did a simple printout of each element in this vector. 
# A little more in-depth interpretation of this data wouldn't hurt, right? Time to throw in some conditionals! 
# As with the while loop, you can use the if and else statements inside the for loop.

### INSTRUCTIONS
# Add code to the for loop that loops over the elements of the linkedin vector:

# If the vector element's value exceeds 10, print out "You're popular!".
# If the vector element's value does not exceed 10, print out "Be more visible!"

### R
> # The linkedin vector has already been defined for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> 
> # Code the for loop with conditionals
> for (li in linkedin) {
    if (li > 10 ) {
      print("You're popular!")
    } else {
      print("Be more  visible!")
    }
    print(li)
  }
[1] "You're popular!"
[1] 16
[1] "Be more  visible!"
[1] 9
[1] "You're popular!"
[1] 13
[1] "Be more  visible!"
[1] 5
[1] "Be more  visible!"
[1] 2
[1] "You're popular!"
[1] 17
[1] "You're popular!"
[1] 14
> 

### you break it

# In the editor on the right you'll find a possible solution to the previous exercise. The code loops over the linkedin vector and prints out different messages depending on the values of li.

# In this exercise, you will use the break and next statements:

# The break statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
# The next statement skips the remainder of the code in the loop, but continues the iteration.

### INSTRUCTIONS
# Extend the for loop with two new, separate if tests in the editor as follows:
# If the vector element's value exceeds 16, print out "This is ridiculous, I'm outta here!" and have R abandon the for loop (break).
# If the value is lower than 5, print out "This is too embarrassing!" and fast-forward to the next iteration (next).


### R
> # The linkedin vector has already been defined for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> 
> # Adapt/extend the for loop
> for (li in linkedin) {
    if (li > 10) {
      print("You're popular!")
    } else {
      print("Be more visible!")
    }
    
    # Add if statement with break
    if (li > 16) {
      print("This is ridiculous, I'm outta here!")
      break
    }
    
    # Add if statement with next
    if (li < 5) {
      print("This is too embarrassing!")
      next
    }
    
    print(li)
  }
[1] "You're popular!"
[1] 16
[1] "Be more visible!"
[1] 9
[1] "You're popular!"
[1] 13
[1] "Be more visible!"
[1] 5
[1] "Be more visible!"
[1] "This is too embarrassing!"
[1] "You're popular!"
[1] "This is ridiculous, I'm outta here!"
> 
