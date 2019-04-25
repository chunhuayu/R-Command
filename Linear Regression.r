Fit a linear model to data
Linear models are implemented in the lm method in R. You can pass a data frame to the lm command and indicate using the formula which variables you want to fit:

z <- lm(response ~ explanatory, data = mydata)
The resulting object (which I've named z) is an lm object containing all the results. You use additional commands to pull out these results. Here are some of the most useful commands to extract results from the lm object:

summary(z)    # parameter estimates and overall model fit
plot(z)       # plots of residuals, normal quantiles, leverage
coef(z)       # model coefficients (means, slopes, intercepts)
confint(z)    # confidence intervals for parameters

resid(z)      # residuals
fitted(z)     # predicted values
abline(z)     # adds simple linear regression line to scatter plot

predict(z, newdata = mynewdata) # predicted values for new observations
                                # contained in your data frame "mynewdata".  
                                # The variable must have the same name 
                                # in mynewdata as in original data frame.

anova(z1, z2)  # compare fits of 2 models, "full" vs "reduced"
anova(z)       # ANOVA table (** terms tested sequentially **)

Basic types of linear models
The simplest linear model fits a constant, the mean, to a single variable. This is useful if you want to obtain an estimate of the mean with a standard error and confidence interval, or wanted to test the null hypothesis that the mean is zero.

z <- lm(y ~ 1, data = mydata)
The most familiar linear model is the linear regression of y on x.

z <- lm(y ~ x, data = mydata)
To fit a linear regression model without an intercept term, i.e., a regression through the origin, add "-1" to the model statement:

z <- lm(y ~ x - 1, data = mydata)
If A is a categorical variable (factor or character) rather than a numeric variable then the model conforms to a single factor ANOVA instead.

z <- lm(y ~ A, data = mydata)
More complicated models include more variables and their interactions

z1 <- lm(y ~ x1 + x2, data = mydata)          # no interaction between x1 and x2
z2 <- lm(y ~ x1 + x2 + x1:x2, data = mydata)  # interaction term present
z2 <- lm(y ~ x1 * x2, data = mydata)          # interaction term present
Analysis of covariance models include both numeric and categorical variables. The linear model in this case is a separate linear regression for each group of the categorical variable. Interaction terms between these two types of variables, if included in the model, fit different linear regression slopes; otherwise the same slope is forced upon every group.

z <- lm(y ~ x + A + x:A, data = mydata)
Simple linear regression
Fit the model to data:

z <- lm(y ~ x, data = mydata)
Add the regression line to a scatter plot.

plot(y ~ x, data = mydata)
abline(z)
To obtain the regression coefficients (parameter estimates) with confidence intervals, as well as R2values,

summary(z)               # estimates of slope, intercept, SE's
confint(z, level = 0.95) # conf. intervals for slope and intercept
To test the null hypothesis of zero slope with the ANOVA table,

anova(z)

### The following plots a tidier regression line that doesn't extend beyond the data points. Assume that the explanatory (x) and response (y) variables are in the data frame mydata. When using predict, replace the "x" in data.frame(x = xnew) below with the name of your x-variable in the linear model.

plot(y ~ x, data = mydata)
z <- lm(y ~ x, data = mydata)
xnew <- range(x)
yhat <- predict(z, newdata = data.frame(x = xnew))
lines(yhat ~ xnew)

                      
                      
                      
                      
### Add confidence bands to your previous scatter plot:
xnew <- seq(min(x), max(x), length.out = 100)
ynew <- data.frame(predict(z, newdata = data.frame(x = xnew), 
                   interval = "confidence", level = 0.95))
lines(ynew$lwr ~ xnew, lty = 2)
lines(ynew$upr ~ xnew, lty = 2)
Adding prediction intervals instead is similar:

xnew <- seq(min(x), max(x), length.out = 100)
ynew <- data.frame(predict(z, newdata = data.frame(x = xnew), 
                   interval = "prediction", level = 0.95))
lines(ynew$lwr ~ xnew, lty = 2)
lines(ynew$upr ~ xnew, lty = 2)
The intervals might not all squeeze onto the plot unless you adjust the limits of the y-axis using theylim = option in the plot command.
