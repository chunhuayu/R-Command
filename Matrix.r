> colnames=c("c1","c2","c3","c4")
> rownames=c("r1","r2","r3")
> x= matrix(1:12, nrow = 3, ncol=4, byrow = TRUE, dimnames = list(rownames,colnames))
> x
   c1 c2 c3 c4
r1  1  2  3  4
r2  5  6  7  8
r3  9 10 11 12
> y=t(x)
> y
   r1 r2 r3
c1  1  5  9
c2  2  6 10
c3  3  7 11
c4  4  8 12
> 
