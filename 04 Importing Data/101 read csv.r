### read.csv
# (1)
# The utils package, which is automatically loaded in your R session on startup, 
# can import CSV files with the read.csv() function.

# In this exercise, you'll be working with swimming_pools.csv; it contains data on swimming pools in Brisbane, 
# Australia (Source: data.gov.au). The file contains the column names in the first row. 
# It uses a comma to separate values within rows.

# Type dir() in the console to list the files in your working directory. You'll see that it contains swimming_pools.csv, 
# so you can start straight away.

### Instructions
# (1)
# Use read.csv() to import "swimming_pools.csv" as a data frame with the name pools.
# Print the structure of pools using str().

### R
# (1)
> # Import swimming_pools.csv: pools
> pools=read.csv("swimming_pools.csv")
> 
> # Print the structure of pools
> str(pools)
'data.frame':	20 obs. of  4 variables:
 $ Name     : Factor w/ 20 levels "Acacia Ridge Leisure Centre",..: 1 2 3 4 5 6 19 7 8 9 ...
 $ Address  : Factor w/ 20 levels "1 Fairlead Crescent, Manly",..: 5 20 18 10 9 11 6 15 12 17 ...
 $ Latitude : num  -27.6 -27.6 -27.6 -27.5 -27.4 ...
 $ Longitude: num  153 153 153 153 153 ...
> 
