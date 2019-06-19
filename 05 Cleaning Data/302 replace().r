### Finding and replacing strings

# The stringr package provides two functions that are very useful for finding and/or replacing patterns in strings: 
# str_detect() and str_replace().

# Like all functions in stringr, the first argument of each is the string of interest. 
# The second argument of each is the pattern of interest. 
# In the case of str_detect(), this is the pattern we are searching for. 
# In the case of str_replace(), this is the pattern we want to replace. 
# Finally, str_replace() has a third argument, which is the string to replace with.

> str_detect(c("banana", "kiwi"), "a")
[1]  TRUE FALSE
> str_replace(c("banana", "kiwi"), "a", "o")     ## $$ ** must notice that only the first letter of a is replaced by o
[1] "bonana" "kiwi"

# The data.frame students2 is already available for you in the workspace. stringr is already loaded. 
# students3 is a copy of it for you to work on so you can always start from scratch if you happen to make a mistake.

### Instructions

# The students2 dataset from earlier in the chapter has been loaded for you again.
# Look at the head() of students3 to remind yourself of how it looks.
# Detect all dates of birth (dob) in 1997 using str_detect(). This should return a vector of TRUE and FALSE values.
# Replace all instances of "F" with "Female" in students3$sex.
# Replace all instances of "M" with "Male" in students3$sex.
# View the head() of students2 to see the result of these replacements.

### R Script

> # Copy of students2: students3
> students3 <- students2
> 
> # Look at the head of students3
> head(students3)
  X school sex        dob address famsize Pstatus Medu Fedu     Mjob     Fjob
1 1     GP   F 2000-06-05       U     GT3       A    4    4  at_home  teacher
2 2     GP   F 1999-11-25       U     GT3       T    1    1  at_home    other
3 3     GP   F 1998-02-02       U     LE3       T    1    1  at_home    other
4 4     GP   F 1997-12-20       U     GT3       T    4    2   health services
5 5     GP   F 1998-10-04       U     GT3       T    3    3    other    other
6 6     GP   M 1999-06-16       U     LE3       T    4    3 services    other
      reason guardian traveltime studytime failures schoolsup famsup paid
1     course   mother          2         2        0       yes     no   no
2     course   father          1         2        0        no    yes   no
3      other   mother          1         2        3       yes     no  yes
4       home   mother          1         3        0        no    yes  yes
5       home   father          1         2        0        no    yes  yes
6 reputation   mother          1         2        0        no    yes  yes
  activities nursery higher internet romantic famrel freetime goout Dalc Walc
1         no     yes    yes       no       no      4        3     4    1    1
2         no      no    yes      yes       no      5        3     3    1    1
3         no     yes    yes      yes       no      4        3     2    2    3
4        yes     yes    yes      yes      yes      3        2     2    1    1
5         no     yes    yes       no       no      4        3     2    1    2
6        yes     yes    yes      yes       no      5        4     2    1    2
  health         nurse_visit absences   Grades
1      3 2014-04-10 14:59:54        6    5/6/6
2      3 2015-03-12 14:59:54        4    5/5/6
3      3 2015-09-21 14:59:54       10   7/8/10
4      5 2015-09-03 14:59:54        2 15/14/15
5      5 2015-04-07 14:59:54        4  6/10/10
6      5 2013-11-15 14:59:54       10 15/15/15
> 
> # Detect all dates of birth (dob) in 1997
> str_detect(students3$dob, "1997")
  [1] FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
 [13] FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE
 [25]  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE
 [37]  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE
 [49]  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
 [61] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE
 [73] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
 [85] FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE  TRUE FALSE  TRUE
 [97]  TRUE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[109] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE
[121]  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE  TRUE
[133] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
[145] FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE
[157] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE FALSE
[169] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[181]  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
[193] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[205] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
[217] FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE
[229] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE
[241] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE
[253] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[265] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[277]  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE
[289] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE
[301] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[313] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[325] FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE FALSE
[337] FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE
[349]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE
[361] FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[373] FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
[385] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
> 
> # In the sex column, replace "F" with "Female" ...
> students3$sex <- str_replace(students3$sex, "F", "Female")
> 
> # ... and "M" with "Male"
> students3$sex <- str_replace(students3$sex, "M", "Male")
> 
> # View the head of students3
> head(students3)
  X school    sex        dob address famsize Pstatus Medu Fedu     Mjob
1 1     GP Female 2000-06-05       U     GT3       A    4    4  at_home
2 2     GP Female 1999-11-25       U     GT3       T    1    1  at_home
3 3     GP Female 1998-02-02       U     LE3       T    1    1  at_home
4 4     GP Female 1997-12-20       U     GT3       T    4    2   health
5 5     GP Female 1998-10-04       U     GT3       T    3    3    other
6 6     GP   Male 1999-06-16       U     LE3       T    4    3 services
      Fjob     reason guardian traveltime studytime failures schoolsup famsup
1  teacher     course   mother          2         2        0       yes     no
2    other     course   father          1         2        0        no    yes
3    other      other   mother          1         2        3       yes     no
4 services       home   mother          1         3        0        no    yes
5    other       home   father          1         2        0        no    yes
6    other reputation   mother          1         2        0        no    yes
  paid activities nursery higher internet romantic famrel freetime goout Dalc
1   no         no     yes    yes       no       no      4        3     4    1
2   no         no      no    yes      yes       no      5        3     3    1
3  yes         no     yes    yes      yes       no      4        3     2    2
4  yes        yes     yes    yes      yes      yes      3        2     2    1
5  yes         no     yes    yes       no       no      4        3     2    1
6  yes        yes     yes    yes      yes       no      5        4     2    1
  Walc health         nurse_visit absences   Grades
1    1      3 2014-04-10 14:59:54        6    5/6/6
2    1      3 2015-03-12 14:59:54        4    5/5/6
3    3      3 2015-09-21 14:59:54       10   7/8/10
4    1      5 2015-09-03 14:59:54        2 15/14/15
5    2      5 2015-04-07 14:59:54        4  6/10/10
6    2      5 2013-11-15 14:59:54       10 15/15/15
> 
