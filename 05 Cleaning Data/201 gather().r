### Gathering columns into key-value pairs

# (1)
# The most important function in tidyr is gather(). 
# It should be used when you have columns that are not variables and you want to collapse them into key-value pairs.

# The easiest way to visualize the effect of gather() is that it makes wide datasets long. 
# As you saw in the video, running the following command on wide_df will make it long:

# gather(wide_df, my_key, my_val, -col)
# Experiment with this in the console before attempting the exercise.

# (2)
# Column names are values

# The weather dataset suffers from one of the five most common symptoms of messy data: column names are values. 
# In particular, the column names X1-X31 represent days of the month, 
# which should really be values of a new variable called day.

# The tidyr package provides the gather() function for exactly this scenario. 
# To remind you of how it works, we've loaded a small dataset called df in your workspace. 
# Give the following a try in the console before attempting the instructions below.

gather(df, time, val, t1:t3)

# Notice that gather() allows you to select multiple columns to be gathered by using the : operator.


### Instructions
# (1)
# Apply the gather() function to bmi, saving the result to bmi_long. This will create two new columns:
# year, containing as values what are currently column headers
# bmi_val, the actual BMI values
# View the first 20 rows of bmi_long.

# (2)
# Load the tidyr package.
# Call gather() on the weather data to gather columns X1-X31. 
# The two columns created as a result should be called day and value. Save the result as weather2.
# View the result with head().

### R Script
# (1)
> # Apply gather() to bmi and save the result as bmi_long
> bmi_long <- gather(bmi, year, bmi_val, -Country)
> 
> # View the first 20 rows of the result
> head(bmi_long, n=20)
               Country  year  bmi_val
1          Afghanistan Y1980 21.48678
2              Albania Y1980 25.22533
3              Algeria Y1980 22.25703
4              Andorra Y1980 25.66652
5               Angola Y1980 20.94876
6  Antigua and Barbuda Y1980 23.31424
7            Argentina Y1980 25.37913
8              Armenia Y1980 23.82469
9            Australia Y1980 24.92729
10             Austria Y1980 24.84097
11          Azerbaijan Y1980 24.49375
12             Bahamas Y1980 24.21064
13             Bahrain Y1980 23.97588
14          Bangladesh Y1980 20.51918
15            Barbados Y1980 24.36372
16             Belarus Y1980 24.90898
17             Belgium Y1980 25.09879
18              Belize Y1980 24.54345
19               Benin Y1980 20.80754
20             Bermuda Y1980 25.07881

# (2)

> # Load the tidyr package
> library(tidyr)
> 
> # Gather the columns
> weather2 <- gather(weather,day,value ,X1:X31, na.rm = TRUE)
> 
> # View the head
> head(weather2)
  X year month           measure day value
1 1 2014    12  Max.TemperatureF  X1    64
2 2 2014    12 Mean.TemperatureF  X1    52
3 3 2014    12  Min.TemperatureF  X1    39
4 4 2014    12    Max.Dew.PointF  X1    46
5 5 2014    12    MeanDew.PointF  X1    40
6 6 2014    12     Min.DewpointF  X1    26
> 
