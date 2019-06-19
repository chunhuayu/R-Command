### An obvious error

# Besides missing values, we want to know if there are values in the data that are too extreme or bizarre to be plausible. 
# A great way to start the search for these values is with summary().

# Once implausible values are identified, they must be dealt with in an intelligent and informed way. 
# Sometimes the best way forward is obvious and other times it may require some research and/or discussions with 
# the original collectors of the data.

Instructions
0 XP
View a summary() of weather6.
Use which() to find the index of the erroneous element of weather6$Max.Humidity, saving the result to ind.
Use ind to look at the full row of weather6 for that day.
You discover an extra zero was accidentally added to this value. Correct it in the data.

### R

> # Review distributions for all variables
> summary(weather6)
      date                        Events            CloudCover   
 Min.   :2014-12-01 00:00:00   Length:366         Min.   :0.000  
 1st Qu.:2015-03-02 06:00:00   Class :character   1st Qu.:3.000  
 Median :2015-06-01 12:00:00   Mode  :character   Median :5.000  
 Mean   :2015-06-01 12:00:00                      Mean   :4.708  
 3rd Qu.:2015-08-31 18:00:00                      3rd Qu.:7.000  
 Max.   :2015-12-01 00:00:00                      Max.   :8.000  
                                                                 
 Max.Dew.PointF  Max.Gust.SpeedMPH  Max.Humidity     Max.Sea.Level.PressureIn
 Min.   :-6.00   Min.   : 0.00     Min.   :  39.00   Min.   :29.58           
 1st Qu.:32.00   1st Qu.:21.00     1st Qu.:  73.25   1st Qu.:30.00           
 Median :47.50   Median :25.50     Median :  86.00   Median :30.14           
 Mean   :45.48   Mean   :26.99     Mean   :  85.69   Mean   :30.16           
 3rd Qu.:61.00   3rd Qu.:31.25     3rd Qu.:  93.00   3rd Qu.:30.31           
 Max.   :75.00   Max.   :94.00     Max.   :1000.00   Max.   :30.88           
                 NA's   :6                                                   
 Max.TemperatureF Max.VisibilityMiles Max.Wind.SpeedMPH Mean.Humidity  
 Min.   :18.00    Min.   : 2.000      Min.   : 8.00     Min.   :28.00  
 1st Qu.:42.00    1st Qu.:10.000      1st Qu.:16.00     1st Qu.:56.00  
 Median :60.00    Median :10.000      Median :20.00     Median :66.00  
 Mean   :58.93    Mean   : 9.907      Mean   :20.62     Mean   :66.02  
 3rd Qu.:76.00    3rd Qu.:10.000      3rd Qu.:24.00     3rd Qu.:76.75  
 Max.   :96.00    Max.   :10.000      Max.   :38.00     Max.   :98.00  
                                                                       
 Mean.Sea.Level.PressureIn Mean.TemperatureF Mean.VisibilityMiles
 Min.   :29.49             Min.   : 8.00     Min.   :-1.000      
 1st Qu.:29.87             1st Qu.:36.25     1st Qu.: 8.000      
 Median :30.03             Median :53.50     Median :10.000      
 Mean   :30.04             Mean   :51.40     Mean   : 8.861      
 3rd Qu.:30.19             3rd Qu.:68.00     3rd Qu.:10.000      
 Max.   :30.77             Max.   :84.00     Max.   :10.000      
                                                                 
 Mean.Wind.SpeedMPH MeanDew.PointF   Min.DewpointF     Min.Humidity  
 Min.   : 4.00      Min.   :-11.00   Min.   :-18.00   Min.   :16.00  
 1st Qu.: 8.00      1st Qu.: 24.00   1st Qu.: 16.25   1st Qu.:35.00  
 Median :10.00      Median : 41.00   Median : 35.00   Median :46.00  
 Mean   :10.68      Mean   : 38.96   Mean   : 32.25   Mean   :48.31  
 3rd Qu.:13.00      3rd Qu.: 56.00   3rd Qu.: 51.00   3rd Qu.:60.00  
 Max.   :22.00      Max.   : 71.00   Max.   : 68.00   Max.   :96.00  
                                                                     
 Min.Sea.Level.PressureIn Min.TemperatureF Min.VisibilityMiles PrecipitationIn 
 Min.   :29.16            Min.   :-3.00    Min.   : 0.000      Min.   :0.0000  
 1st Qu.:29.76            1st Qu.:30.00    1st Qu.: 2.000      1st Qu.:0.0000  
 Median :29.94            Median :46.00    Median :10.000      Median :0.0000  
 Mean   :29.93            Mean   :43.33    Mean   : 6.716      Mean   :0.1016  
 3rd Qu.:30.09            3rd Qu.:60.00    3rd Qu.:10.000      3rd Qu.:0.0400  
 Max.   :30.64            Max.   :74.00    Max.   :10.000      Max.   :2.9000  
                                                                               
 WindDirDegrees 
 Min.   :  1.0  
 1st Qu.:113.0  
 Median :222.0  
 Mean   :200.1  
 3rd Qu.:275.0  
 Max.   :360.0
> 
> # Find row with Max.Humidity of 1000
> ind <- which(weather6$Max.Humidity == 1000)
> 
> # Look at the data for that day
> weather6[ind, ]
          date                Events CloudCover Max.Dew.PointF
142 2015-04-21 Fog-Rain-Thunderstorm          6             57
    Max.Gust.SpeedMPH Max.Humidity Max.Sea.Level.PressureIn Max.TemperatureF
142                94         1000                    29.75               65
    Max.VisibilityMiles Max.Wind.SpeedMPH Mean.Humidity
142                  10                20            71
    Mean.Sea.Level.PressureIn Mean.TemperatureF Mean.VisibilityMiles
142                      29.6                56                    5
    Mean.Wind.SpeedMPH MeanDew.PointF Min.DewpointF Min.Humidity
142                 10             49            36           42
    Min.Sea.Level.PressureIn Min.TemperatureF Min.VisibilityMiles
142                    29.53               46                   0
    PrecipitationIn WindDirDegrees
142            0.54            184
> 
> # Change 1000 to 100
> weather6$Max.Humidity[ind] <- 100
> 
