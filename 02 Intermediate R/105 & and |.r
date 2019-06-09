### & and |

# Before you work your way through the next exercises, have a look at the following R expressions. 
# All of them will evaluate to TRUE:

TRUE & TRUE
FALSE | TRUE
5 <= 5 & 2 < 3
3 < 4 | 7 < 6
# Watch out: 3 < x < 7 to check if x is between 3 and 7 will not work; you'll need 3 < x & x < 7 for that.

# In this exercise, you'll be working with the last variable. 
# This variable equals the last value of the linkedin vector that you've worked with previously. 
# The linkedin vector represents the number of LinkedIn views your profile had in the last seven days, remember? 
# Both the variables linkedin and last have already been defined in the editor.

### INSTRUCTIONS
# (1)
# Write R expressions to solve the following questions concerning the variable last:
# Is last under 5 or above 10?
# Is last between 15 and 20, excluding 15 but including 20?
# (2)
# When did LinkedIn views exceed 10 and did Facebook views fail to reach 10 for a particular day? Use the linkedin and facebook vectors.
# When were one or both of your LinkedIn and Facebook profiles visited at least 12 times?
# When is the views matrix equal to a number between 11 and 14, excluding 11 and including 14?


### R
# (1)
> # The linkedin and last variable are already defined for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> last <- tail(linkedin, 1)
> 
> # Is last under 5 or above 10?
> last <5 | last >10
[1] TRUE
> 
> # Is last between 15 (exclusive) and 20 (inclusive)?
> last <= 20 & last >15
[1] FALSE
> 
# (2)

> # The social data (linkedin, facebook, views) has been created for you
> 
> # linkedin exceeds 10 but facebook below 10
> linkedin >10 & facebook <10
[1] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
> 
> # When were one or both visited at least 12 times?
> linkedin >=12 | facebook >=12
[1]  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE
> 
> # When is views between 11 (exclusive) and 14 (inclusive)?
> views <= 14 & views >11
      [,1]  [,2]  [,3]  [,4]  [,5]  [,6] [,7]
[1,] FALSE FALSE  TRUE FALSE FALSE FALSE TRUE
[2,] FALSE FALSE FALSE FALSE FALSE  TRUE TRUE
> 

