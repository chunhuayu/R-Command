### R provides a wide range of functions for obtaining summary statistics. 
### One method of obtaining descriptive statistics is to use the sapply( ) function with a specified summary statistic.

# get means for variables in data frame mydata
# excluding missing values 
sapply(mydata, mean, na.rm=TRUE)

#### Possible functions used in sapply include mean, sd, var, min, max, median, range, and quantile.
#### There are also numerous R functions designed to provide a range of descriptive statistics at once. For example
summary(mydata)
# mean,median,25th and 75th quartiles,min,max

fivenum(x)
# Tukey min,lower-hinge, median,upper-hinge,max


###Using the Hmisc package
library(Hmisc)
describe(mydata) 
# n, nmiss, unique, mean, 5,10,25,50,75,90,95th percentiles 
# 5 lowest and 5 highest scores


### Using the pastecs package
library(pastecs)
stat.desc(mydata) 
# nbr.val, nbr.null, nbr.na, min max, range, sum, 
# median, mean, SE.mean, CI.mean, var, std.dev, coef.var

### Using the psych package
library(psych)
describe(mydata)
# item name ,item number, nvalid, mean, sd, 
# median, mad, min, max, skew, kurtosis, se

### Summary Statistics by Group
### A simple way of generating summary statistics by grouping variable is available in the psych package.
library(psych)
describe.by(mydata, group,...)

### The doBy package provides much of the functionality of SAS PROC SUMMARY. It defines the desired table using a model formula and a function. Here is a simple example.
### library(doBy)
summaryBy(mpg + wt ~ cyl + vs, data = mtcars, 
  FUN = function(x) { c(m = mean(x), s = sd(x)) } )
Per.Rcost=summaryBy(pec~Rcost, data = data.r, FUN = list(mean, max, min, median, sd))
# produces mpg.m wt.m mpg.s wt.s for each 
# combination of the levels of cyl and vs
