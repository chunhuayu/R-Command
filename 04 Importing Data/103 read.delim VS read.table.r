### (1) read.delim

# Aside from .csv files, there are also the .txt files which are basically text files. 
# You can import these functions with read.delim(). By default, it sets the sep argument to "\t" 
# (fields in a record are delimited by tabs) and the header argument to TRUE (the first row contains the field names).

# In this exercise, you will import hotdogs.txt, 
# containing information on sodium and calorie levels in different hotdogs (Source: UCLA). 
# The dataset has 3 variables, but the variable names are not available in the first line of the file. 
# The file uses tabs as field separators.

### (2) read.table

# If you're dealing with more exotic flat file formats, you'll want to use read.table(). 
# It's the most basic importing function; you can specify tons of different arguments in this function. 
# Unlike read.csv() and read.delim(), the header argument defaults to FALSE and the sep argument is "" by default.

# Up to you again! The data is still hotdogs.txt. It has no column names in the first row, and the field separators are tabs. 
# This time, though, the file is in the data folder inside your current working directory. 
# A variable path with the location of this file is already coded for you.


### Instructions
# (1)
# Import the data in "hotdogs.txt" with read.delim(). Call the resulting data frame hotdogs. 
# The variable names are not on the first line, so make sure to set the header argument appropriately.
# Call summary() on hotdogs. This will print out some summary statistics about all variables in the data frame.

# (2)
# Finish the read.table() call that's been prepared for you. Use the path variable, and make sure to set sep correctly.
# Call head() on hotdogs; this will print the first 6 observations in the data frame.


### R
# (1)
> # Import hotdogs.txt: hotdogs
> hotdogs=read.delim("hotdogs.txt",header=FALSE)
> 
> # Summarize hotdogs
> summary(hotdogs)
       V1           V2              V3       
 Beef   :20   Min.   : 86.0   Min.   :144.0  
 Meat   :17   1st Qu.:132.0   1st Qu.:362.5  
 Poultry:17   Median :145.0   Median :405.0  
              Mean   :145.4   Mean   :424.8  
              3rd Qu.:172.8   3rd Qu.:503.5  
              Max.   :195.0   Max.   :645.0
              
# (2)
> # Path to the hotdogs.txt file: path
> path <- file.path("data", "hotdogs.txt")
> 
> # Import the hotdogs.txt file: hotdogs
> hotdogs <- read.table(path, 
                        sep = "\t", 
                        col.names = c("type", "calories", "sodium"))
> 
> # Call head() on hotdogs
> head(hotdogs)
  type calories sodium
1 Beef      186    495
2 Beef      181    477
3 Beef      176    425
4 Beef      149    322
5 Beef      184    482
6 Beef      190    587
> 

# syntax
read.table(file, header = FALSE, sep = "", quote = "\"'",
           dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
           row.names, col.names, as.is = !stringsAsFactors,
           na.strings = "NA", colClasses = NA, nrows = -1,
           skip = 0, check.names = TRUE, fill = !blank.lines.skip,
           strip.white = FALSE, blank.lines.skip = TRUE,
           comment.char = "#",
           allowEscapes = FALSE, flush = FALSE,
           stringsAsFactors = default.stringsAsFactors(),
           fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)
read.csv(file, header = TRUE, sep = ",", quote = "\"",
         dec = ".", fill = TRUE, comment.char = "", …)

read.csv2(file, header = TRUE, sep = ";", quote = "\"",
          dec = ",", fill = TRUE, comment.char = "", …)

read.delim(file, header = TRUE, sep = "\t", quote = "\"",
           dec = ".", fill = TRUE, comment.char = "", …)

read.delim2(file, header = TRUE, sep = "\t", quote = "\"",
            dec = ",", fill = TRUE, comment.char = "", …)
