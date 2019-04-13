# pick up 10 numbers randomly from 5.0 to 7.5
x1 <- runif(10, 5.0, 7.5) 

# pick up 3 integer numbers without replacement
x2 <- sample(1:10, 3,replace = False)

# the numbers following normal distribution
x3= rnorm(n, mean=0, sd=1)   # 正态分布
   
# the numbers following exponential distribution
x4= rexp(n, rate=1)   # 指数

# the numbers following gamma distribution
x5= rgamma(n, shape, rate=1, scale=1/rate)   # r 分布
    
# the numbers following poisson distribution
x6= rpois(n, lambda)   # 泊松
    
# the numbers following t distribution
x7= rt(n, df, ncp)   # t 分布
    
# the numbers following f distribution
x8= rf(n, df1, df2, ncp)   # f 分布
    
# the numbers following chi-square distribution
x9= rchisq(n, df, ncp=0)   # 卡方分布
    
# the numbers following Binomial distribution
x10= rbinom(n, size, prob)   # 二项分布
    
# the numbers following Weibull distribution
x11= rweibull(n, shape, scale=1)   # weibull 分布
    
# the numbers following Beta distribution
x12= rbeta(n, shape1, shape2)   # beta 分布
