### Customize further: else if

# The else if statement allows you to further customize your control structure. You can add as many else if statements as you like. Keep in mind that R ignores the remainder of the control structure once a condition has been found that is TRUE and the corresponding expressions have been executed. Here's an overview of the syntax to freshen your memory:

if (condition1) {
  expr1
} else if (condition2) {
  expr2
} else if (condition3) {
  expr3
} else {
  expr4
}
# Again, It's important that the else if keywords comes on the same line as the closing bracket of the previous part of 
# the control construct!

### INSTRUCTIONS
# Add code to both control structures such that:

# R prints out "Showing Facebook information" if medium is equal to "Facebook". Remember that R is case sensitive!
# "Your number of views is average" is printed if num_views is between 15 (inclusive) and 10 (exclusive). 


### R
> # Variables related to your last day of recordings
> medium <- "LinkedIn"
> num_views <- 14
> 
> # Control structure for medium
> if (medium == "LinkedIn") {
    print("Showing LinkedIn information")
  } else if (medium == "Facebook") {
    # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
  } else {
    print("Unknown medium")
  }
[1] "Showing LinkedIn information"
> 
> # Control structure for num_views
> if (num_views > 15) {
    print("You're popular!")
  } else if (num_views <= 15 & num_views > 10) {
    # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
  } else {
    print("Try to be more visible!")
  }
[1] "Your number of views is average"
> 
