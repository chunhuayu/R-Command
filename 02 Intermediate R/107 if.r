### The if statement

# Before diving into some exercises on the if statement, have another look at its syntax:

if (condition) {
  expr
}
# Remember your vectors with social profile views? Let's look at it from another angle. 
# The medium variable gives information about the social website;
# the num_views variable denotes the actual number of views that particular medium had on the last day of your recordings. 
# Both these variables have already been defined in the editor.

### INSTRUCTIONS
# Examine the if statement that prints out "Showing LinkedIn information" if the medium variable equals "LinkedIn".
# Code an if statement that prints "You're popular!" to the console if the num_views variable exceeds 15.

### R
> # Variables related to your last day of recordings
> medium <- "LinkedIn"
> num_views <- 14
> 
> # Examine the if statement for medium
> if (medium == "LinkedIn") {
    print("Showing LinkedIn information")
  }
[1] "Showing LinkedIn information"
> 
> # Write the if statement for num_views
> if (num_views >15) {
    print("You're popular!")
  }
> 


