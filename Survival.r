install.packages(c("clinfun","CPE","risksetROC", "timeROC",
                   "survivalROC","survC1","survIDINRI"))

library(survival)

set.seed(666)
age <- rnorm(400, 50, 10)
bp  <- rnorm(400,120, 15)
d.time <- rexp(400)
cens   <- runif(400,.5,2)
death  <- d.time <= cens
d.time <- pmin(d.time, cens)

fit <- coxph(Surv(d.time,death) ~ age + bp)
summary(fit) 
# Concordance = 0.502  (se = 0.019 ) 

# Compute the concordance between a right-censored 
# survival time and a single continuous covariate
survConcordance(Surv(d.time,death) ~ predict(fit))
# Concordance = 0.502101  (se = 0.01883032 )
# Concordance = concordant/(concordant+discordant)

library(Hmisc)
# Computes the c index and the corresponding generalization of 
# Somers' Dxy rank correlation for a censored response variable.
rcorrcens(Surv(d.time,death) ~ predict(fit))
# C index: 1 - 0.498 = 0.502 
# C index = (1+aDxy)/2 = (1+0.004)/2 = 0.502

library(risksetROC)
tmax <- max(d.time)
# Create and plot AUC based on incident/dynamic definition of Heagerty
AUC <- risksetAUC(Stime=d.time, status=death,
                  marker=age + bp, method="Cox", tmax=tmax)
AUC$Cindex
# 0.5020833

library(clinfun)
# Calculate Gonen & Heller concordance probability estimate (CPE) for 
# for the Cox proportional hazards model.
coxphCPE(fit)
# CPE= 0.50884256, se.CPE = 0.01678487 

library(CPE)
# Calculate Gonen & Heller concordance probability estimate (CPE) 
# for the Cox proportional hazards model.
phcpe(fit, CPE.SE=TRUE,out.ties=TRUE)
# CPE= 0.5088426, se.CPE = 0.01678487 


library(survivalROC)
# Time-dependent ROC curve estimation from censored survival data
AUC2 <- survivalROC(Stime=d.time, status=death,     
                    marker = eta,     
                    predict.time =  265, method="KM")
AUC2$AUC
# 0.6124465 
plot(AUC2$FP, 
     AUC2$TP, 
     type="l", 
     xlim=c(0,1), ylim=c(0,1),   
     xlab=paste( "FP", "\n", "AUC = ",round(AUC2$AUC,3)), 
     ylab="TP",main="AUC2, Method = KM \n Year = 1")
abline(0,1)

library(timeROC)
# Time-dependent ROC curve estimation
ROC<-timeROC(T=d.time,
             delta=death,
             marker=eta,
             other_markers=as.matrix(bp),
             cause=1,
             weighting="marginal",
             times=quantile(d.time,probs=seq(0.2,0.8,0.1)),
             ROC = TRUE,
             iid = TRUE)
ROC
confint(ROC)
