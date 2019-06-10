### grepl & grep
# (1)
# regular expressions can be used to see whether a pattern exists inside a character string or a vector of character strings.
# For this purpose, you can use:

grepl()
# which returns TRUE when a pattern is found in the corresponding character string.
grep()
# which returns a vector of indices of the character strings that contains the pattern.
# Both functions need a pattern and an x argument, where pattern is the regular expression you want to match for,
# and the x argument is the character vector from which matches should be sought.
# The vector emails has already been defined in the editor on the right so you can begin with the instructions straight away!

# (2)
# You can use the caret, ^, and the dollar sign, $ to match the content located in the start and end of a string, respectively. This could take us one step closer to a correct pattern for matching only the ".edu" email addresses from our list of emails. But there's more that can be added to make the pattern more robust:
# @, because a valid email must contain an at-sign.
# .*, which matches any character (.) zero or more times (*). Both the dot and the asterisk are metacharacters. 
# You can use them to match any character between the at-sign and the ".edu" portion of an email address.
# \\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: 
# it tells R that you want to use the . as an actual character.


### INSTRUCTIONS
# Use grepl() to generate a vector of logicals that indicates whether these email addressess contain "edu".
# Print the result to the output.
# Do the same thing with grep(), but this time save the resulting indexes in a variable hits.
# Use the variable hits to select from the emails vector only the emails that contain "edu".

# (2)
# Use grepl() with the more advanced regular expression to return a logical vector. Simply print the result.
# Do a similar thing with grep() to create a vector of indices. Store the result in the variable hits.
# Use emails[hits] again to subset the emails vector.

### R
# (1)
> # The emails vector has already been defined for you
> emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
              "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
> 
> # Use grepl() to match for "edu"
> grepl(pattern="edu",emails )
[1]  TRUE  TRUE FALSE  TRUE  TRUE FALSE
> 
> # Use grep() to match for "edu", save result to hits
> hits <- grep(pattern='edu',emails)
> 
> # Subset emails using hits
> emails[hits]
[1] "john.doe@ivyleague.edu"   "education@world.gov"     
[3] "invalid.edu"              "quant@bigdatacollege.edu"
> 

# (2)
> # The emails vector has already been defined for you
> emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
              "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
> 
> # Use grepl() to match for .edu addresses more robustly
> grepl(pattern='.edu$',emails)
[1]  TRUE FALSE FALSE  TRUE  TRUE FALSE
> 
> # Use grep() to match for .edu addresses more robustly, save result to hits
> hits <- grep(pattern='.edu$', emails)
> 
> # Subset emails using hits
> 
> emails[hits]
[1] "john.doe@ivyleague.edu"   "invalid.edu"             
[3] "quant@bigdatacollege.edu"
> # The emails vector has already been defined for you
> emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
              "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
> 
> # Use grepl() to match for .edu addresses more robustly
> grepl(pattern='@.*\\.edu$',emails)
[1]  TRUE FALSE FALSE FALSE  TRUE FALSE
> 
> # Use grep() to match for .edu addresses more robustly, save result to hits
> hits <- grep(pattern='@.*\\.edu$', emails)
> 
> # Subset emails using hits
> 
> emails[hits]
[1] "john.doe@ivyleague.edu"   "quant@bigdatacollege.edu"
> 
