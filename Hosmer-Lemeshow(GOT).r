### How well our model fits depends on the difference between the model and the observed data.  
### One approach for binary data is to implement a Hosmer Lemeshow goodness of fit test.
> library(ResourceSelection)
> set.seed(123)
> n=500
> x=rnorm(n)
> y=rbinom(n,1,plogis(0.1+0.5*x))
> m=glm(y~x,family = 'binomial')
> hoslem.test(m$y,fitted(m))

#	Hosmer and Lemeshow goodness of fit (GOF) test

# data:  m$y, fitted(m)
# X-squared = 4.5227, df = 8, p-value = 0.8072
### Our model appears to fit well 
### because we have no significant difference between the model and the observed data (i.e. the p-value is above 0.05).
### As with all measures of model fit, we’ll use this as just one piece of information in deciding how well this model fits.  
### It doesn’t work well in very large or very small data sets, but is often useful nonetheless.
