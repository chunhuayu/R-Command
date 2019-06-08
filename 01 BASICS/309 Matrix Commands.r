### name the rows or columns ###
> colnames=c("c1","c2","c3","c4")
> rownames=c("r1","r2","r3")
> x= matrix(1:12, nrow = 3, ncol=4, byrow = TRUE, dimnames = list(rownames,colnames))
> x
   c1 c2 c3 c4
r1  1  2  3  4
r2  5  6  7  8
r3  9 10 11 12
> y=t(x)    # transpose matrix
> y
   r1 r2 r3
c1  1  5  9
c2  2  6 10
c3  3  7 11
c4  4  8 12

> y<-c(1:10)
> y
 [1]  1  2  3  4  5  6  7  8  9 10

# transpose matrix
> t(y)
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
[1,]    1    2    3    4    5    6    7    8    9    10

# the class of y
> class(y)
[1] "integer"
# the class of transposed matrix
> class(t(y))
[1] "matrix"

> t(t(y))
      [,1]
 [1,]    1
 [2,]    2
 [3,]    3
 [4,]    4
 [5,]    5
 [6,]    6
 [7,]    7
 [8,]    8
 [9,]    9
[10,]   10

> class(t(t(y)))
[1] "matrix"

# get a matrix which is random numbers following normal distribution with 10 rows
> matrix(rnorm(100),nrow=10)

# return the diagonal of matrix x
> diag(x)
[1]  1  6 11
> w=diag(x)
# the class of return value is integer
> class(w)
[1] "integer"
# create a diagonal matrix which the diagnoal value is w 
> v=diag(diag(x))
> v
     [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    6    0
[3,]    0    0   11
> class(v)
[1] "matrix"

> diag(c(1:4),4,4)
     [,1] [,2] [,3] [,4]
[1,]    1    0    0    0
[2,]    0    2    0    0
[3,]    0    0    3    0
[4,]    0    0    0    4

> diag(3)
     [,1] [,2] [,3]
[1,]    1    0    0
[2,]    0    1    0
[3,]    0    0    1

> A=diag(4)+1
> A
     [,1] [,2] [,3] [,4]
[1,]    2    1    1    1
[2,]    1    2    1    1
[3,]    1    1    2    1
[4,]    1    1    1    2

### abtain the number of rows of matrix x ###
> nrow(x)
[1] 3

### abtain the number of columns of matrix A ###
> ncol(A)
[1] 4

### Calculation  ###
> c=2
> c*A
[,1] [,2] [,3] [,4]
[1,]   2   8   14   20
[2,]   4   10   16   22
[3,]   6   12   18   24

### Matrix Multiplication ###
> A=matrix(1:12,nrow=3,ncol=4)
> B=matrix(1:12,nrow=4,ncol=3)
> A%*%B
     [,1] [,2] [,3]
[1,]   70  158  246
[2,]   80  184  288
[3,]   90  210  330
> b <- matrix(c(1,2,3),nrow=3)
> bt <- matrix(c(1,2,3),nrow=1)
> b%*%bt
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    2    4    6
[3,]    3    6    9
> bt%*%b
     [,1]
[1,]   14

### The Inverse of a Matrix ####
solve(A)

### dot product ###
x<-c(1:5)
y<-c(3:7)
z<-crossprod(x,y)  # 1*3+2*4+3*5+4*6+5*7
z
[,1]
[1,] 85

> w<-tcrossprod(x,y)
> w
    [,1] [,2] [,3] [,4] [,5]
[1,] 3 4 5 6 7
[2,] 6 8 10 12 14
[3,] 9 12 15 18 21
[4,] 12 16 20 24 28
[5,] 15 20 25 30 35

### |x × y| = |x|·|y|·sin<x,y> ###
### outer(x，y，fun=”*”)=x%o%y ###

q<-x%o%y
> q
    [,1] [,2] [,3] [,4] [,5]
[1,] 3 4 5 6 7
[2,] 6 8 10 12 14
[3,] 9 12 15 18 21
[4,] 12 16 20 24 28
[5,] 15 20 25 30 35

> a %o% b
, , 1, 1
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12

, , 2, 1
     [,1] [,2] [,3] [,4]
[1,]    2    8   14   20
[2,]    4   10   16   22
[3,]    6   12   18   24
, , 1, 2
     [,1] [,2] [,3] [,4]
[1,]    3   12   21   30
[2,]    6   15   24   33
[3,]    9   18   27   36
, , 2, 2
     [,1] [,2] [,3] [,4]
[1,]    4   16   28   40
[2,]    8   20   32   44
[3,]   12   24   36   48

# the deteminat of matrix ###
det(x)
# the matrix rank ###
qr(x)$rank

# All attributes of an object can be checked with the attributes() function(dimension can be checked directly with the dim())
> a
[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> class(a)
[1] "matrix"
> attributes(a)
$dim
[1] 3 3
> dim(a)
[1] 3 3
