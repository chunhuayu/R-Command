### Equality
# The most basic form of comparison is equality. Let's briefly recap its syntax. 
# The following statements all evaluate to TRUE (feel free to try them out in the console).

3 == (2 + 1)
"intermediate" != "r"
TRUE != FALSE
"Rchitect" != "rchitect"

# Notice from the last expression that R is case sensitive: "R" is not equal to "r". Keep this in mind when solving the exercises in this chapter!

### INSTRUCTIONS
# In the editor on the right, write R code to see if TRUE equals FALSE.
# Likewise, check if -6 * 14 is not equal to 17 - 101.
# Next up: comparison of character strings. Ask R whether the strings "useR" and "user" are equal.
# Finally, find out what happens if you compare logicals to numerics: are TRUE and 1 equal?

### R
> # Comparison of logicals
> TRUE == FALSE
[1] FALSE
> 
> # Comparison of numerics
> -6*14!=17-101
[1] FALSE
> 
> # Comparison of character strings
> "useR"=="user"
[1] FALSE
> 
> # Compare a logical with a numeric
> TRUE==1
[1] TRUE
> 

### COMMENTS
# Since TRUE coerces to 1 under the hood, TRUE == 1 evaluates to TRUE.
# Make sure not to mix up == (comparison) and = (assignment), == is what need to check the equality of R objects.
