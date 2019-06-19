### Finding missing values

# As you've seen, missing values in R should be represented by NA, but unfortunately you will not always be so lucky. 
# Before you can deal with missing values, you have to find them in the data.

# If missing values are properly coded as NA, the is.na() function will help you find them. 
# Otherwise, if your dataset is too big to just look at the whole thing, 
# you may need to try searching for some of the usual suspects like "", "#N/A", etc. 
# You can also use the summary() and table() functions to turn up unexpected values in your data.

# In this exercise, we've created a simple dataset called social_df that has 3 pieces of information for each of four friends:

# Name
# Number of friends on a popular social media platform
# Current "status" on the platform

### Instructions

# Call is.na() on social_df to spot all NA values.
# Wrap the above with the any() function to ask the question "Are there any NA values in my dataset?".
# View a summary() of the dataset to see how missing values are broken out.
# Use table to identify odd values of the status variable.

### R Script

> # Call is.na() on the full social_df to spot all NAs
> is.na(social_df)
      name n_friends status
[1,] FALSE     FALSE  FALSE
[2,] FALSE      TRUE  FALSE
[3,] FALSE     FALSE  FALSE
[4,] FALSE     FALSE  FALSE
> 
> # Use the any() function to ask whether there are any NAs in the data
> any(is.na(social_df))
[1] TRUE
> 
> # View a summary() of the dataset
> 
> summary(social_df)
    name     n_friends                status 
 Alice:1   Min.   : 43.0                 :2  
 David:1   1st Qu.: 94.0   Going out!    :1  
 Sarah:1   Median :145.0   Movie night...:1  
 Tom  :1   Mean   :144.0                     
           3rd Qu.:194.5                     
           Max.   :244.0                     
           NA's   :1
> # Call table() on the status column
> table(social_df$status)

                   Going out! Movie night... 
             2              1              1
> 
