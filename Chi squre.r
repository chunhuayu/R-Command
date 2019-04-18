> a=matrix(c(3,5,5,7,7,7,8,9,10,11,2.3,1.9,1,0.7,0.3,1,1.05,0.45,0.7,0.3),ncol = 2)
> chisq.test(a)
#
#	Pearson's Chi-squared test
#
# data:  a
# X-squared = 8.9294, df = 9, p-value = 0.4438

# Warning message:
# In chisq.test(a) : Chi-squared近似算法有可能不准


> kw=matrix(c(892,1165,954,185,149,66),ncol = 3)
> chisq.test(kw)

#	Pearson's Chi-squared test

# data:  kw
# X-squared = 503.7, df = 2, p-value < 2.2e-16
