### Gathering columns into key-value pairs

# The most important function in tidyr is gather(). 
# It should be used when you have columns that are not variables and you want to collapse them into key-value pairs.

# The easiest way to visualize the effect of gather() is that it makes wide datasets long. 
# As you saw in the video, running the following command on wide_df will make it long:

# gather(wide_df, my_key, my_val, -col)
# Experiment with this in the console before attempting the exercise.

### Instructions

# Apply the gather() function to bmi, saving the result to bmi_long. This will create two new columns:
# year, containing as values what are currently column headers
# bmi_val, the actual BMI values
# View the first 20 rows of bmi_long.

### R Script

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
