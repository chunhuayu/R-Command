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
