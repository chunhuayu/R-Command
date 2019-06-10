### sapply can't simplify, now what?

# It seems like we've hit the jackpot with sapply(). 
# On all of the examples so far, sapply() was able to nicely simplify the rather bulky output of lapply(). 
# But, as with life, there are things you can't simplify. How does sapply() react?

# We already created a function, below_zero(), that takes a vector of numerical values and returns a vector that 
# only contains the values that are strictly below zero.

Instructions
100 XP
Apply below_zero() over temp using sapply() and store the result in freezing_s.
Apply below_zero() over temp using lapply(). Save the resulting list in a variable freezing_l.
Compare freezing_s to freezing_l using the identical() function.

> # Apply below_zero over temp using sapply(): freezing_s
> freezing_s <- sapply(temp,below_zero)
> 
> # Apply below_zero over temp using lapply(): freezing_l
> freezing_l <- lapply( temp, below_zero)
> 
> # Are freezing_s and freezing_l identical?
> identical(freezing_l,freezing_s)
[1] TRUE

> freezing_l
[[1]]
[1] -1

[[2]]
numeric(0)

[[3]]
[1] -1 -3

[[4]]
[1] -2

[[5]]
numeric(0)

[[6]]
[1] -3

[[7]]
numeric(0)

> freezing_s
[[1]]
[1] -1

[[2]]
numeric(0)

[[3]]
[1] -1 -3

[[4]]
[1] -2

[[5]]
numeric(0)

[[6]]
[1] -3

[[7]]
numeric(0)
> 

