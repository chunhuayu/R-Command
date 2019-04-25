> library(multcomp, pos=4)
> library(abind, pos=4)
> AnovaModel.1 <- aov(days.mgraine.5 ~ group, data=Dataset)
> summary(AnovaModel.1)
             Df Sum Sq Mean Sq F value  Pr(>F)  
group         3   76.7 25.5776  2.6472 0.04858 *
Residuals   435 4203.0  9.6621                  
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1 
37 observations deleted due to missingness
> numSummary(Dataset$days.mgraine.5 , groups=Dataset$group, 
+   statistics=c("mean", "sd"))
            mean       sd   n NA
group A 2.314815 3.911756 108 13
group B 2.027273 1.988310 110  9
group C 2.495495 3.011716 111  7
group D 3.163636 3.229813 110  8
> pairwise.t.test(days.mgraine.5, group, p.adj="bonferroni", paired=T)
