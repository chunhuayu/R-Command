# glm model:
# simple linear regression is "gaussian"
# logistic regression is "binomial"
glm(formula, family=gaussian,data,  ...)
option:
family
binomial(link = "logit") 
gaussian(link = "identity") 
Gamma(link = "inverse") 
inverse.gaussian(link = "1/mu^2") 
poisson(link = "log") 
quasi(link = "identity", variance = "constant") 
quasibinomial(link = "logit") 
quasipoisson(link = "log")

# simple linear regression, t test or F test
fit= lm(formula,,,,)
summary(fit)
anova(fit)

# test whether the reduced model is significant
fit.full =lm(formula of full model,,)
fit.redu =lm(formula of reduced model,,)
anova(fit.redu, fit.full)
