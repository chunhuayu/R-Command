### stringsAsFactors

# With stringsAsFactors, you can tell R whether it should convert strings in the flat file to factors.

# For all importing functions in the utils package, this argument is TRUE, which means that you import strings as factors. 
# This only makes sense if the strings you import represent categorical variables in R. 
# If you set stringsAsFactors to FALSE, the data frame columns corresponding to strings in your text file will be character.

# You'll again be working with the swimming_pools.csv file. It contains two columns (Name and Address), 
# which shouldn't be factors.

### Instructions

# Use read.csv() to import the data in "swimming_pools.csv" as a data frame called pools; 
# make sure that strings are imported as characters, not as factors.
# Using str(), display the structure of the dataset and check that you indeed get character vectors instead of factors.

### R
> # Import swimming_pools.csv correctly: pools
> pools=read.csv("swimming_pools.csv",stringsAsFactors=FALSE)
> 
> # Check the structure of pools
> str(pools)
'data.frame':	20 obs. of  4 variables:
 $ Name     : chr  "Acacia Ridge Leisure Centre" "Bellbowrie Pool" "Carole Park" "Centenary Pool (inner City)" ...
 $ Address  : chr  "1391 Beaudesert Road, Acacia Ridge" "Sugarwood Street, Bellbowrie" "Cnr Boundary Road and Waterford Road Wacol" "400 Gregory Terrace, Spring Hill" ...
 $ Latitude : num  -27.6 -27.6 -27.6 -27.5 -27.4 ...
 $ Longitude: num  153 153 153 153 153 ...
> 
