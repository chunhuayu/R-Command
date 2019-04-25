library(stats)
help(infert)                     # Description of data
infert <- data.frame(infert)
str(infert)                      # Check type of variables
summary(infert)                  # Statistical summary

## Model1 Develop a simple logistic regression:

model1 <- glm(case ~ spontaneous+induced, data = infert, family = binomial())

## Model output
summary(model1)                    # Output summary information
confint(model1)                    # Output 95% CI for the coefficients
exp(coef(model1))                  # Output OR (exponentiated coefficients)
exp(confint(model1))               # 95% CI for exponentiated coefficients
predict(model1, type="risk")       # predicted values
residuals(model1, type="deviance") # residuals

## Model2 Develop a logistic regression adjusted for other potential confounders:
model2 <- glm(case ~ age+parity+education+spontaneous+induced,data = infert, 
              family = binomial())
summary(model2)

## Model3 Develop a conditional logistic regression

library(survival)
model3 <- clogit(case ~ spontaneous+induced+strata(stratum), data = infert)
summary(model3)

## Model4 Conditional logistic regression  
## Transfer the numerous variable into category variable
model4 <- clogit(case ~ factor(spontaneous)+factor(induced)+strata(stratum), 
                 data = infert)
summary(model4)

## Model5 Conditional logistic regression 
## Conduct a subgroup analysis
## "subset" is not aviable for "clogit"
## create the subset first

str(infert$education)

infert1 <- subset(infert,education =="12+ yrs")

model5 <- clogit(case ~ factor(spontaneous)+ factor(induced)+ strata(stratum), 
                 data = infert1)
summary(model5)

## Model6 General logistic regression  
## Change the reference category for category variable
## Note: Argument "contrasts" not matched in clogit

infert$spontaneous <- 
  as.factor(infert$spontaneous)
infert$induced <- 
  as.factor(infert$induced)

infert$spontaneous <- 
  relevel(infert$spontaneous, ref = "2")
infert$induced <- 
  relevel(infert$induced, ref = "1")

model6 <- glm(case ~ spontaneous+induced, 
              data = infert)
summary(model6)


## Model7 General logistic regression 
## Performs stepwise model selection by AIC
## Note: Model selection in R is based on AIC but not P value
model7 <- glm(case ~ spontaneous+induced+factor(education)+age+parity,data = infert)
summary(model7)

model8 <-step(model7)  ## Default direction is "backward"
summary(model8)

model9 <-step(model7,direction="both")
summary(model9)

## Compare the AUC of two ROC curves
infert$pred6 <-predict(model6)
infert$pred8 <-predict(model8)

library("pROC")

rocobj1 <- plot.roc(infert$case,
                    infert$pred6, 
                    percent=TRUE,ci=TRUE,col="#1c61b6")  
rocobj2 <- plot.roc(infert$case,
                    infert$pred8, 
                    add=TRUE,percent=TRUE,ci=TRUE,col="#008600")  
testobj <- roc.test(rocobj1, rocobj2)  
text(50, 50, labels=paste("p-value =", 
                          format.pval(testobj$p.value)), adj=c(0, .5))  
legend("bottomright", legend=c("Model5", "Model8"), 
       col=c("#1c61b6", "#008600"),lwd=2,ncol=2)
