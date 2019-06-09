### Function documentation

# Before even thinking of using an R function, you should clarify which arguments it expects. 
# All the relevant details such as a description, usage, and arguments can be found in the documentation. 
# To consult the documentation on the sample() function, for example, you can use one of following R commands:

help(sample)
?sample
# If you execute these commands in the console of the DataCamp interface, you'll be redirected to www.rdocumentation.org.

# A quick hack to see the arguments of the sample() function is the args() function. Try it out in the console:

args(sample)

# In the next exercises, you'll be learning how to use the mean() function with increasing complexity. The first thing you'll have to do is get acquainted with the mean() function.

### INSTRUCTIONS
# (1)
# Consult the documentation on the mean() function: ?mean or help(mean).
# Inspect the arguments of the mean() function using the args() function.
# (2)
# Calculate the average number of views for both linkedin and facebook and assign the result to avg_li and avg_fb, 
# respectively. Print out both avg_li and avg_fb.
# (3)
# Calculate the mean of the element-wise sum of linkedin and facebook and store the result in a variable avg_sum.
# Calculate the mean once more, but this time set the trim argument equal to 0.2 and assign the result to avg_sum_trimmed.
# Print out both avg_sum and avg_sum_trimmed; can you spot the difference?




### R
# (1)
> # Consult the documentation on the mean() function
> help(mean)
> 
> # Inspect the arguments of the mean() function
> args(mean)
function (x, ...) 
NULL
> 

#(2)
> # The linkedin and facebook vectors have already been created for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> facebook <- c(17, 7, 5, 16, 8, 13, 14)
> 
> # Calculate average number of views
> avg_li <-  mean(linkedin)
> avg_fb <- mean(facebook)
> 
> 
> # Inspect avg_li and avg_fb
> avg_fb
[1] 11.42857
> avg_li
[1] 10.85714
> 

#(3)
> # The linkedin and facebook vectors have already been created for you
> linkedin <- c(16, 9, 13, 5, 2, 17, 14)
> facebook <- c(17, 7, 5, 16, 8, 13, 14)
> 
> # Calculate the mean of the sum
> avg_sum <- mean(linkedin+facebook)
> 
> # Calculate the trimmed mean of the sum
> avg_sum_trimmed <- mean(linkedin+facebook,trim = 0.2)
> 
> # Inspect both new variables
> avg_sum_trimmed
[1] 22.6
> avg_sum
[1] 22.28571
> 


