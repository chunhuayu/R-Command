install.packages('vcd') # install vcd package, probably will use Arthritis dataset
library(vcd)
### need grid
> head(Arthritis)                ###### display the first six obs
# ID Treatment  Sex Age Improved
# 1 57   Treated Male  27     Some
# 2 46   Treated Male  29     None
# 3 77   Treated Male  30     None
# 4 17   Treated Male  32   Marked
# 5 36   Treated Male  46   Marked
# 6 23   Treated Male  58   Marked

> class(Arthritis)             ####### display the class of objects
# [1] "data.frame"

### summary function in system, variables with Min. 1st qu, median, mean, 3rd Qu, Max
### ID and Age are the quantitive variables. others are factors.
> summary(Arthritis)           
ID          Treatment      Sex          Age          Improved 
Min.   : 1.00   Placebo:43   Female:59   Min.   :23.00   None  :42  
1st Qu.:21.75   Treated:41   Male  :25   1st Qu.:46.00   Some  :14  
Median :42.50                            Median :57.00   Marked:28  
Mean   :42.50                            Mean   :53.36              
3rd Qu.:63.25                            3rd Qu.:63.00              
Max.   :84.00                            Max.   :74.00

### create a 1D table.
> a<-table(Arthritis$Improved)
### display the type of a, a is a table
> class(a)                    
[1] "table"
> a
None   Some Marked 
42     14     28 

### create a 2by2 table
> b<-table(Arthritis$Sex,Arthritis$Improved)
> class(b)
[1] "table"
> b
#       
#         None Some Marked
#  Female   25   12     22
#  Male     17    2      6

### convert the value of each cell into percentage form
> prop.table(a)
 
#      None      Some    Marked 
# 0.5000000 0.1666667 0.3333333 

> prop.table(b)
        
#                None       Some     Marked
#   Female 0.29761905 0.14285714 0.26190476
#   Male   0.20238095 0.02380952 0.07142857

# add the sum at margin
> addmargins(a)####################################
 
  None   Some Marked    Sum 
    42     14     28     84 
> addmargins(b)####################################
        
         None Some Marked Sum
  Female   25   12     22  59
  Male     17    2      6  25
  Sum      42   14     28  84
### add sum of percentage at margin
> addmargins(prop.table(a))#########################
 
     None      Some    Marked       Sum 
0.5000000 0.1666667 0.3333333 1.0000000 
> addmargins(prop.table(b))#########################
        
               None       Some     Marked        Sum
  Female 0.29761905 0.14285714 0.26190476 0.70238095
  Male   0.20238095 0.02380952 0.07142857 0.29761905
  Sum    0.50000000 0.16666667 0.33333333 1.00000000

### only add the sum for each columan 
> addmargins(prop.table(b),1)
        
               None       Some     Marked
  Female 0.29761905 0.14285714 0.26190476
  Male   0.20238095 0.02380952 0.07142857
  Sum    0.50000000 0.16666667 0.33333333

### only add the sum for each row
> addmargins(prop.table(b),2)
        
               None       Some     Marked        Sum
  Female 0.29761905 0.14285714 0.26190476 0.70238095
  Male   0.20238095 0.02380952 0.07142857 0.29761905

### reference:
### --------------------- 
### 作者：zhyoulun 
### 来源：CSDN 
### 原文：https://blog.csdn.net/zhyoulun/article/details/46433163 
### 版权声明：本文为博主原创文章，转载请附上博文链接！
