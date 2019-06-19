### Separating columns

# The separate() function allows you to separate one column into multiple columns. Unless you tell it otherwise, 
# it will attempt to separate on any character that is not a letter or number. 
# You can also specify a specific separator using the sep argument.

# We've loaded the small dataset from the video called treatments into your workspace. 
# This dataset obeys the principles of tidy data, but we'd like to split the treatment dates into two separate columns: 
# year and month. This can be accomplished with the following:

# separate(treatments, year_mo, c("year", "month"))
# Experiment with this in the console before attempting the exercise.

### Instructions

# We've loaded a dataset called bmi_cc into your workspace that is a slight variation of bmi_long, which you've already seen. 
# The Country_ISO column of bmi_cc has the name of each country as well its two-letter ISO country code, 
# separated by a forward slash.

# Apply the separate() function to bmi_cc
# Separate Country_ISO into two columns: Country and ISO
# Be sure to specify the correct separator with the sep argument
# Save the result to a new object called bmi_cc_clean
# View the head of the result.


### R Script

> # Apply separate() to bmi_cc
> bmi_cc_clean <- separate(bmi_cc, col = Country_ISO, into = c("Country", "ISO"), sep = "/")
> 
> # Print the head of the result
> head(bmi_cc_clean)
              Country ISO  year  bmi_val
1         Afghanistan  AF Y1980 21.48678
2             Albania  AL Y1980 25.22533
3             Algeria  DZ Y1980 22.25703
4             Andorra  AD Y1980 25.66652
5              Angola  AO Y1980 20.94876
6 Antigua and Barbuda  AG Y1980 23.31424
