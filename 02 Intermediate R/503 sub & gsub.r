### sub & gsub

# While grep() and grepl() were used to simply check whether a regular expression could be matched with a character vector, 
# sub() and gsub() take it one step further: you can specify a replacement argument. 
# If inside the character vector x, 
# the regular expression pattern is found, the matching element(s) will be replaced with replacement.
# sub() only replaces the first match, whereas gsub() replaces all matches.

# Suppose that emails vector you've been working with is an excerpt of DataCamp's email database. 
# Why not offer the owners of the .edu email addresses a new email address on the datacamp.edu domain? 
# This could be quite a powerful marketing stunt: Online education is taking over traditional learning institutions! 
# Convert your email and be a part of the new generation!

### Instructions

# With the advanced regular expression "@.*\\.edu$", use sub() to replace the match with "@datacamp.edu". 
# Since there will only be one match per character string, gsub() is not necessary here. Inspect the resulting output.


### R
> # The emails vector has already been defined for you
> emails <- c("john.doe@ivyleague.edu", "education@world.gov", "global@peace.org",
              "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")
> 
> # Use sub() to convert the email domains to datacamp.edu
> sub(pattern='@.*\\.edu$',replacement = '@datacamp.edu', emails)
[1] "john.doe@datacamp.edu"    "education@world.gov"     
[3] "global@peace.org"         "invalid.edu"             
[5] "quant@datacamp.edu"       "cookie.monster@sesame.tv"
> 


### (2)Regular expressions are a typical concept that you'll learn by doing and by seeing other examples.
### Before you rack your brains over the regular expression in this exercise, have a look at the new things that will be used:

# .*: A usual suspect! It can be read as "any character that is matched zero or more times".
# \\s: Match a space. The "s" is normally a character, escaping it (\\) makes it a metacharacter.
# [0-9]+: Match the numbers 0 to 9, at least once (+).
# ([0-9]+): The parentheses are used to make parts of the matching string available to define the replacement. 
# The \\1 in the replacement argument of sub() gets set to the string that is captured by the regular expression [0-9]+.

awards <- c("Won 1 Oscar.",
  "Won 1 Oscar. Another 9 wins & 24 nominations.",
  "1 win and 2 nominations.",
  "2 wins & 3 nominations.",
  "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
  "4 wins & 1 nomination.")

sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)

# What does this code chunk return? 
# awards is already defined in the workspace so you can start playing in the console straight away.


# Possible Answers
# A. A vector of integers containing: 1, 24, 2, 3, 2, 1.
# B. The vector awards gets returned as there isn't a single element in awards that matches the regular expression.
# C. A vector of character strings containing "1", "24", "2", "3", "2", "1".
# D. A vector of character strings containing "Won 1 Oscar.", "24", "2", "3", "2", "1".

# Submit Answer D
