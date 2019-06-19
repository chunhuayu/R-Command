### Column headers are values, not variable names

# You saw earlier in the chapter how we sometimes come across datasets where column names are actually values of a variable 
# (e.g. months of the year). This is often the case when working with repeated measures data, 
# where measurements are taken on subjects of interest on multiple occasions over time. 
# The gather() function is helpful in these situations.
# tidyr and dplyr are already loaded for you.

### Instructions

# View the head of census.
# Gather the month columns, creating two new columns (month and amount), saving the result to census2.
# Run the code given to arrange() the rows of census2 by the YEAR column.
# View the first 20 rows of the result.

### R Script

> # Gather the month columns
> census2 <- gather(census, month, amount, -YEAR)
> 
> # Arrange rows by YEAR using dplyr's arrange
> census2_arr <- arrange(census2, YEAR)
> 
> # View first 20 rows of census2
> head(census2_arr, 20)
   YEAR month amount
1  1992   JAN 146913
2  1992   FEB 147270
3  1992   MAR 146831
4  1992   APR 148082
5  1992   MAY 149015
6  1992   JUN 149821
7  1992   JUL 150809
8  1992   AUG 151064
9  1992   SEP 152595
10 1992   OCT 153577
11 1992   NOV 153605
12 1992   DEC 155504
13 1993   JAN 157525
14 1993   FEB 156292
15 1993   MAR 154774
16 1993   APR 158996
17 1993   MAY 160624
18 1993   JUN 160171
19 1993   JUL 162832
20 1993   AUG 162491
> 
