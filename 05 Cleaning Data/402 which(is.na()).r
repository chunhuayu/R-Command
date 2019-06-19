### Find missing values

# Before dealing with missing values in the data, 
# it's important to find them and figure out why they exist in the first place.
# If your dataset is too big to look at all at once, like it is here, remember you can use sum() and is.na() 
# to quickly size up the situation by counting the number of NA values.

# The summary() function may also come in handy for identifying which variables contain the missing values. 
# Finally, the which() function is useful for locating the missing values within a particular column.

### Instructions

# Use sum() and is.na() to count the number of NA values in weather6.
# Look at a summary() of weather6 to figure out how the missings are distributed among the different variables.
# Use which() to identify the indices (i.e. row numbers) where Max.Gust.SpeedMPH is NA and save the result to ind(for indices).
# Use ind to look at the full rows of weather6 for which Max.Gust.SpeedMPH is missing.

### R

> # Count missing values
> sum(is.na(weather6))
[1] 6
> 
> # Find missing values
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
> # Find indices of NAs in Max.Gust.SpeedMPH
> ind <- which(is.na(weather6$Max.Gust.SpeedMPH))
> 
> # Look at the full rows for records missing Max.Gust.SpeedMPH
> weather6[ind, ]
          date Events CloudCover Max.Dew.PointF Max.Gust.SpeedMPH Max.Humidity
169 2015-05-18    Fog          6             52                NA          100
185 2015-06-03                 7             48                NA           93
251 2015-08-08                 4             61                NA           87
275 2015-09-01                 1             63                NA           78
316 2015-10-12                 0             56                NA           89
338 2015-11-03                 1             44                NA           82
    Max.Sea.Level.PressureIn Max.TemperatureF Max.VisibilityMiles
169                    30.30               58                  10
185                    30.31               56                  10
251                    30.02               76                  10
275                    30.06               79                  10
316                    29.86               76                  10
338                    30.25               73                  10
    Max.Wind.SpeedMPH Mean.Humidity Mean.Sea.Level.PressureIn Mean.TemperatureF
169                16            79                     30.23                54
185                14            82                     30.24                52
251                14            68                     29.99                69
275                15            65                     30.02                74
316                15            65                     29.80                64
338                16            57                     30.13                60
    Mean.VisibilityMiles Mean.Wind.SpeedMPH MeanDew.PointF Min.DewpointF
169                    8                 10             48            43
185                   10                  7             45            43
251                   10                  6             57            54
275                   10                  9             62            59
316                   10                  8             51            48
338                   10                  8             42            40
    Min.Humidity Min.Sea.Level.PressureIn Min.TemperatureF Min.VisibilityMiles
169           57                    30.12               49                   0
185           71                    30.19               47                  10
251           49                    29.95               61                  10
275           52                    29.96               69                  10
316           41                    29.74               51                  10
338           31                    30.06               47                  10
    PrecipitationIn WindDirDegrees
169               0             72
185               0             90
251               0             45
275               0             54
316               0            199
338               0            281
> 
