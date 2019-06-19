### Spreading key-value pairs into columns

# The opposite of gather() is spread(), which takes key-values pairs and spreads them across multiple columns. 
# This is useful when values in a column should actually be column names (i.e. variables). 
# It can also make data more compact and easier to read.

# The easiest way to visualize the effect of spread() is that it makes long datasets wide. 
# As you saw in the video, running the following command will make long_df wide:

# spread(long_df, my_key, my_val)
# Experiment with this in the console before attempting the exercise.

spread(data, key, value, fill = NA, convert = FALSE, drop = TRUE,sep = NULL)

### Instructions

# Use spread() to reverse the operation that you performed in the last exercise with gather(). 
# In other words, make bmi_long wide again, saving the result to bmi_wide.
# View the head of bmi_wide.


### R Script

# Apply spread() to bmi_long
bmi_wide <- spread(bmi_long, year, bmi_val)

# View the head of bmi_wide
head(bmi_wide)



### (2)

> ## tidyr is already loaded for you
> 
> # View first 50 rows of census_long
> head(census_long, n= 50)
   YEAR month type   amount
1  1992   JAN  MED 146913.0
2  1992   FEB  MED 147270.0
3  1992   MAR  MED 146831.0
4  1992   APR  MED 148082.0
5  1992   MAY  MED 149015.0
6  1992   JUN  MED 149821.0
7  1992   JUL  MED 150809.0
8  1992   AUG  MED 151064.0
9  1992   SEP  MED 152595.0
10 1992   OCT  MED 153577.0
11 1992   NOV  MED 153605.0
12 1992   DEC  MED 155504.0
13 1992   JAN  LOW 138283.1
14 1992   FEB  LOW 139097.8
15 1992   MAR  LOW 139707.8
16 1992   APR  LOW 146174.1
17 1992   MAY  LOW 144659.5
18 1992   JUN  LOW 140761.8
19 1992   JUL  LOW 145347.8
20 1992   AUG  LOW 149368.9
21 1992   SEP  LOW 145721.9
22 1992   OCT  LOW 151195.6
23 1992   NOV  LOW 150228.7
24 1992   DEC  LOW 146701.6
25 1992   JAN HIGH 148180.5
26 1992   FEB HIGH 150315.3
27 1992   MAR HIGH 149089.4
28 1992   APR HIGH 157623.9
29 1992   MAY HIGH 155522.7
30 1992   JUN HIGH 158115.4
31 1992   JUL HIGH 160292.5
32 1992   AUG HIGH 152280.8
33 1992   SEP HIGH 154387.8
34 1992   OCT HIGH 157158.0
35 1992   NOV HIGH 158224.6
36 1992   DEC HIGH 162142.4
37 1993   JAN  MED 157525.0
38 1993   FEB  MED 156292.0
39 1993   MAR  MED 154774.0
40 1993   APR  MED 158996.0
41 1993   MAY  MED 160624.0
42 1993   JUN  MED 160171.0
43 1993   JUL  MED 162832.0
44 1993   AUG  MED 162491.0
45 1993   SEP  MED 163285.0
46 1993   OCT  MED 164711.0
47 1993   NOV  MED 166593.0
48 1993   DEC  MED 168101.0
49 1993   JAN  LOW 148895.1
50 1993   FEB  LOW 148119.8
> 
> # Spread the type column
> census_long2 <- spread(census_long, type, amount)
> 
> 
> # View first 20 rows of census_long2
> head(census_long2, n=20)
   YEAR month     HIGH      LOW    MED
1  1992   APR 157623.9 146174.1 148082
2  1992   AUG 152280.8 149368.9 151064
3  1992   DEC 162142.4 146701.6 155504
4  1992   FEB 150315.3 139097.8 147270
5  1992   JAN 148180.5 138283.1 146913
6  1992   JUL 160292.5 145347.8 150809
7  1992   JUN 158115.4 140761.8 149821
8  1992   MAR 149089.4 139707.8 146831
9  1992   MAY 155522.7 144659.5 149015
10 1992   NOV 158224.6 150228.7 153605
11 1992   OCT 157158.0 151195.6 153577
12 1992   SEP 154387.8 145721.9 152595
13 1993   APR 168537.9 157088.1 158996
14 1993   AUG 163707.8 160795.9 162491
15 1993   DEC 174739.4 159298.6 168101
16 1993   FEB 159337.3 148119.8 156292
17 1993   JAN 158792.5 148895.1 157525
18 1993   JUL 172315.5 157370.8 162832
19 1993   JUN 168465.4 151111.8 160171
20 1993   MAR 157032.4 147650.8 154774
