Using with( ) and by( )
There are two functions that can help write simpler and more efficient code.

With
The with( ) function applys an expression to a dataset. It is similar to DATA= in SAS.

# with(data, expression)
# example applying a t-test to a data frame mydata 
with(mydata, t.test(y ~ group))

with(warpbreaks, table(wool, tension))
> head(warpbreaks)
  breaks wool tension
1     26    A       L
2     30    A       L
3     54    A       L
4     25    A       L
5     70    A       L
6     52    A       L
> tail(warpbreaks)
   breaks wool tension
49     17    B       H
50     13    B       H
51     15    B       H
52     15    B       H
53     16    B       H
54     28    B       H
> with(warpbreaks, table(wool, tension))
    tension
wool L M H
   A 9 9 9
   B 9 9 9

### Example 2:
with(data.frame(u = c(5,10,15,20,30,40,60,80,100),
                lot1 = c(118,58,42,35,27,25,21,19,18),
                lot2 = c(69,35,26,21,18,16,13,12,12)),
    list(summary(glm(lot1 ~ log(u), family = Gamma)),
         summary(glm(lot2 ~ log(u), family = Gamma))))


### By()
### The by( ) function applys a function to each level of a factor or factors. It is similar to BY processing in SAS.
### A data frame is split by row into data frames subsetted by the values of one or more factors, and function FUN is applied to each subset in turn.
# by(data, factorlist, function)
# example obtain variable means separately for
# each level of byvar in data frame mydata 
by(mydata, mydata$byvar, function(x) mean(x))
by(warpbreaks[, 1:2], warpbreaks[,"tension"], summary)

> by(warpbreaks[, 1:2], warpbreaks[,"tension"], summary)
warpbreaks[, "tension"]: L
     breaks      wool 
 Min.   :14.00   A:9  
 1st Qu.:26.00   B:9  
 Median :29.50        
 Mean   :36.39        
 3rd Qu.:49.25        
 Max.   :70.00        
---------------------------------------------------- 
warpbreaks[, "tension"]: M
     breaks      wool 
 Min.   :12.00   A:9  
 1st Qu.:18.25   B:9  
 Median :27.00        
 Mean   :26.39        
 3rd Qu.:33.75        
 Max.   :42.00        
---------------------------------------------------- 
warpbreaks[, "tension"]: H
     breaks      wool 
 Min.   :10.00   A:9  
 1st Qu.:15.25   B:9  
 Median :20.50        
 Mean   :21.67        
 3rd Qu.:25.50        
 Max.   :43.00  
 
 
### example 2
by(warpbreaks, warpbreaks[,"tension"],
   function(x) lm(breaks ~ wool, data = x))

> by(warpbreaks, warpbreaks[,"tension"],
+    function(x) lm(breaks ~ wool, data = x))
warpbreaks[, "tension"]: L

Call:
lm(formula = breaks ~ wool, data = x)

Coefficients:
(Intercept)        woolB  
      44.56       -16.33  

---------------------------------------------------- 
warpbreaks[, "tension"]: M

Call:
lm(formula = breaks ~ wool, data = x)

Coefficients:
(Intercept)        woolB  
     24.000        4.778  

---------------------------------------------------- 
warpbreaks[, "tension"]: H

Call:
lm(formula = breaks ~ wool, data = x)

Coefficients:
(Intercept)        woolB  
     24.556       -5.778 
   
