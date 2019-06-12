Multiple time series, part 1

In the data chapter we discussed how the form of your data affects how you can plot it. Here, you'll explore that topic in the context of multiple time series.

The dataset you'll use contains the global capture rates of seven salmon species from 1950 - 2010.

In your workspace, the following dataset is available:

fish.species: Each variable (column) is a Salmon Species and each observation (row) is one Year.
To get a multiple time series plot, however, both Year and Species should be in their own column. You need tidy data: one variable per column. Once you have that you can get the plot shown in the viewer by mapping Year to the x aesthetic and Species to the color aesthetic.

You'll use the gather() function of the tidyr package, which is already loaded for you.

Instructions
100 XP
Instructions
100 XP
Use gather() to move from fish.species to a tidy data frame, fish.tidy. This data frame should have three columns: Year (int), Species (factor) and Capture (int).
gather() takes four arguments: the original data frame (fish.species), the name of the key column (Species), the name of the value column (Capture) and the name of the grouping variable, with a minus in front (-Year). They can all be specified as object names (i.e. no "").

> # Check the structure as a starting point
> str(fish.species)
'data.frame':	61 obs. of  8 variables:
 $ Year    : int  1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 ...
 $ Pink    : int  100600 259000 132600 235900 123400 244400 203400 270119 200798 200085 ...
 $ Chum    : int  139300 155900 113800 99800 148700 143700 158480 125377 132407 113114 ...
 $ Sockeye : int  64100 51200 58200 66100 83800 72000 84800 69676 100520 62472 ...
 $ Coho    : int  30500 40900 33600 32400 38300 45100 40000 39900 39200 32865 ...
 $ Rainbow : int  0 100 100 100 100 100 100 100 100 100 ...
 $ Chinook : int  23200 25500 24900 25300 24500 27700 25300 21200 20900 20335 ...
 $ Atlantic: int  10800 9701 9800 8800 9600 7800 8100 9000 8801 8700 ...
> 
> # Use gather to go from fish.species to fish.tidy
> fish.tidy <- gather(fish.species, Species, Capture, -Year)
> 
