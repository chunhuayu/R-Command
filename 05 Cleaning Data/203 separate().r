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

### (2)

> ## tidyr is already loaded for you
> 
> # View the head of census_long3
> head(census_long3)
  yr_month     HIGH      LOW    MED
1 1992_APR 157623.9 146174.1 148082
2 1992_AUG 152280.8 149368.9 151064
3 1992_DEC 162142.4 146701.6 155504
4 1992_FEB 150315.3 139097.8 147270
5 1992_JAN 148180.5 138283.1 146913
6 1992_JUL 160292.5 145347.8 150809
> 
> # Separate the yr_month column into two
> census_long4 <- separate(census_long3, yr_month, c("year", "month"))
> 
> # View the first 6 rows of the result
> head(census_long4)
  year month     HIGH      LOW    MED
1 1992   APR 157623.9 146174.1 148082
2 1992   AUG 152280.8 149368.9 151064
3 1992   DEC 162142.4 146701.6 155504
4 1992   FEB 150315.3 139097.8 147270
5 1992   JAN 148180.5 138283.1 146913
6 1992   JUL 160292.5 145347.8 150809
> 

