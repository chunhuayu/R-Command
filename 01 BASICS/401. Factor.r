### What's a factor and why would you use it?
(1)
# In this chapter you dive into the wonderful world of factors.
# The term factor refers to a statistical data type used to store categorical variables. 
# The difference between a categorical variable and a continuous variable is that 
#.....a categorical variable can belong to a limited number of categories. 
#.....A continuous variable, on the other hand, can correspond to an infinite number of values.

# It is important that R knows whether it is dealing with a continuous or a categorical variable, 
# as the statistical models you will develop in the future treat both types differently. 

# A good example of a categorical variable is sex. 
# In many circumstances you can limit the sex categories to "Male" or "Female". (Sometimes you may need different categories.
# you may need to consider chromosomal variation, hermaphroditic animals, or different cultural norms, 
# but you will always have a finite number of categories.)

# (2)
# To create factors in R, you make use of the function factor(). 
# First,to create a vector that contains all the observations that belong to a limited number of categories. 
# For example, sex_vector contains the sex of 5 different individuals:

sex_vector <- c("Male","Female","Female","Male","Male")

# It is clear that there are two categories, or in R-terms 'factor levels', at work here: "Male" and "Female".
# The function factor() will encode the vector as a factor:

factor_sex_vector <- factor(sex_vector)


# (3)
# There are two types of categorical variables: a nominal categorical variable and an ordinal categorical variable.
# A nominal variable is a categorical variable without an implied order.
# This means that it is impossible to say that 'one is worth more than the other'. 
# think of the categorical variable animals_vector with the categories "Elephant", "Giraffe", "Donkey" and "Horse". Here, 
# it is impossible to say that one stands above or below the other. (Note that some of you might disagree ;-) ).

# In contrast, ordinal variables do have a natural ordering. 
# Consider for example the categorical variable temperature_vector with the categories: "Low", "Medium" and "High". 
# Here it is obvious that "Medium" stands above "Low", and "High" stands above "Medium".


### INSTRUCTIONS
# (1)
# Assign to variable theory the value "factors for categorical variables".

# (2)
# Convert the character vector sex_vector to a factor with factor() and assign the result to factor_sex_vector
# Print out factor_sex_vector and assert that R prints out the factor levels below the actual values.

# (3)
# Click 'Submit Answer' to check how R constructs and prints nominal and ordinal variables. 
# Do not worry if you do not understand all the code just yet, we will get to that.


# (1)
> # Assign to the variable theory what this chapter is about!
> theory <- "factors for categorical variables"
> theory
[1] "factors for categorical variables"

# (2)
> # Sex vector
> sex_vector <- c("Male", "Female", "Female", "Male", "Male")
> 
> # Convert sex_vector to a factor
> factor_sex_vector <-factor(sex_vector)
> 
> # Print out factor_sex_vector
> factor_sex_vector
[1] Male   Female Female Male   Male  
Levels: Female Male
> 

# (3)
> # Animals
> animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
> factor_animals_vector <- factor(animals_vector)
> factor_animals_vector
[1] Elephant Giraffe  Donkey   Horse   
Levels: Donkey Elephant Giraffe Horse
> 
> # Temperature
> temperature_vector <- c("High", "Low", "High","Low", "Medium")
> factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
> factor_temperature_vector
[1] High   Low    High   Low    Medium
Levels: Low < Medium < High
> 



