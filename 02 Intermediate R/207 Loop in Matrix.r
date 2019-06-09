### Loop over a matrix

# In your workspace, there's a matrix ttt, that represents the status of a tic-tac-toe game. 
# It contains the values "X", "O" and "NA". Print out ttt in the console so you can have a closer look. 
# On row 1 and column 1, there's "O", while on row 3 and column 2 there's "NA".

# To solve this exercise, you'll need a for loop inside a for loop, often called a nested loop. 
# Doing this in R is a breeze! Simply use the following recipe:

for (var1 in seq1) {
  for (var2 in seq2) {
    expr
  }
}

### INSTRUCTIONS
# Finish the nested for loops to go over the elements in ttt:

# The outer loop should loop over the rows, with loop index i (use 1:nrow(ttt)).
# The inner loop should loop over the columns, with loop index j (use 1:ncol(ttt)).
# Inside the inner loop, make use of print() and paste() to print out information in the following format:
# "On row i and column j the board contains x", where x is the value on that position.


### R
> # The tic-tac-toe matrix ttt has already been defined for you
> ttt
     [,1] [,2] [,3]
[1,] "O"  NA   "X" 
[2,] NA   "O"  "O" 
[3,] "X"  NA   "X"

> # define the double for loop
> for (i in 1:nrow(ttt)) {
    for (j in 1:ncol(ttt)) {
      print(paste("On row",i,"and column",j, "the board contains",ttt[i,j]))
    }
  }
[1] "On row 1 and column 1 the board contains O"
[1] "On row 1 and column 2 the board contains NA"
[1] "On row 1 and column 3 the board contains X"
[1] "On row 2 and column 1 the board contains NA"
[1] "On row 2 and column 2 the board contains O"
[1] "On row 2 and column 3 the board contains O"
[1] "On row 3 and column 1 the board contains X"
[1] "On row 3 and column 2 the board contains NA"
[1] "On row 3 and column 3 the board contains X"
> 
