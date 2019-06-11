### (1)

# In the last exercise you saw how iris.tidy was used to make a specific plot. 
# It's important to know how to rearrange your data in this way so that your plotting functions become easier. 
# In this exercise you'll use functions from the tidyr package to convert iris to iris.tidy.

# The resulting iris.tidy data should look as follows:

      Species  Part Measure Value
    1  setosa Sepal  Length   5.1
    2  setosa Sepal  Length   4.9
    3  setosa Sepal  Length   4.7
    4  setosa Sepal  Length   4.6
    5  setosa Sepal  Length   5.0
    6  setosa Sepal  Length   5.4
    ...
# You can have a look at the iris dataset by typing head(iris) in the console.

# Note: If you're not familiar with %>%, gather() and separate(), you may want to take the Cleaning Data in R course. 
# In a nutshell, a dataset is called tidy when every row is an observation and every column is a variable. 
# The gather() function moves information from the columns to the rows. 
# It takes multiple columns and gathers them into a single column by adding rows. 
# The separate() function splits one column into two or more columns according to a pattern you define.
# %>% (or "pipe") operator passes result of the left-hand side as the first argument of the function on the right-hand side.

### INSTRUCTIONS
# You'll use two functions from the tidyr package:

# gather() rearranges the data frame by specifying the columns that are categorical variables with a - notation. 
# Complete the command. Notice that only one variable is categorical in iris.
# separate() splits up the new key column, which contains the former headers, according to .. 
# The new column names "Part" and "Measure" are given in a character vector. Don't forget the quotes.


### R
> # Load the tidyr package
> library(tidyr)
> 
> # Fill in the ___ to produce to the correct iris.tidy dataset
> iris.tidy <- iris %>%
    gather(key, Value, -Species) %>%
    separate(key, c("Part", "Measure"), "\\.")
> iris.tidy
       Species  Part Measure Value
1       setosa Sepal  Length   5.1
2       setosa Sepal  Length   4.9
3       setosa Sepal  Length   4.7
4       setosa Sepal  Length   4.6
5       setosa Sepal  Length   5.0
6       setosa Sepal  Length   5.4
7       setosa Sepal  Length   4.6

### (2)

# In the last exercise you saw how iris.wide was used to make a specific plot. Y
# ou also saw previously how you can derive iris.tidy from iris. Now you'll move on to produce iris.wide.

# The head of the iris.wide should look like this in the end:

  Species  Part Length Width
1  setosa Petal    1.4   0.2
2  setosa Petal    1.4   0.2
3  setosa Petal    1.3   0.2
4  setosa Petal    1.5   0.2
5  setosa Petal    1.4   0.2
6  setosa Petal    1.7   0.4
...
You can have a look at the iris dataset by typing head(iris) in the console.

### INSTRUCTIONS
# Before you begin, you need to add a new column called Flower that contains a unique identifier for each row in the data frame. This is because you'll rearrange the data frame afterwards and you need to keep track of which row, or which specific flower, each value came from. It's done for you, no need to add anything yourself.
# gather() rearranges the data frame by specifying the columns that are categorical variables with a - notation. In this case, Species and Flower are categorical. Complete the command.
# separate() splits up the new key column, which contains the former headers, according to .. The new column names "Part" and "Measure" are given in a character vector.
# The last step is to use spread() to distribute the new Measure column and associated value column into two columns.

### R
> # Load the tidyr package
> library(tidyr)
> 
> # Add column with unique ids (don't need to change)
> iris$Flower <- 1:nrow(iris)
> 
> # Fill in the ___ to produce to the correct iris.wide dataset
> iris.wide <- iris %>%
    gather(key, value, -Species, -Flower) %>%
    separate(key, c("Part", "Measure"), "\\.") %>%
    spread(Measure, value)
> head(iris.wide)
       Species Flower  Part Length Width
1       setosa      1 Petal    1.4   0.2
2       setosa      1 Sepal    5.1   3.5
3       setosa      2 Petal    1.4   0.2
4       setosa      2 Sepal    4.9   3.0
5       setosa      3 Petal    1.3   0.2
6       setosa      3 Sepal    4.7   3.2


