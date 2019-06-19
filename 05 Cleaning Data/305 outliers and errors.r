### Dealing with outliers and obvious errors

# When dealing with strange values in your data, you often must decide whether they are just extreme or actually erroneous. 
# Extreme values show up all over the place, but you, the data analyst, 
# must figure out when they are plausible and when they are not.

# We have loaded a dataset called students3, which is another slight variation of the original students dataset. 
# Two variables appear to have suspicious values: age and absences. Let's explore these values further.

### Instructions
# (1)
# Call summary() on the full students3 dataset to expose the concerning values of age and absences.
# View a histogram (using hist()) of the age variable.
# View a histogram of the absences variable.
# View another histogram of absences,
# .....but force values of zero to be bucketed to the right of zero on the x-axis with right = FALSE.

# (2)
# View a boxplot() of the age variable from students3.
# View a boxplot() of the absences variable from students3.

### R 

# (1)
> # Look at a summary() of students3
> summary(students3)
 school   sex          age        address famsize   Pstatus      Medu      
 GP:349   F:208   Min.   :15.00   R: 88   GT3:281   A: 41   Min.   :0.000  
 MS: 46   M:187   1st Qu.:16.00   U:307   LE3:114   T:354   1st Qu.:2.000  
                  Median :17.00                             Median :3.000  
                  Mean   :16.75                             Mean   :2.749  
                  3rd Qu.:18.00                             3rd Qu.:4.000  
                  Max.   :38.00                             Max.   :4.000  
                                                                           
      Fedu             Mjob           Fjob            reason      guardian  
 Min.   :0.000   at_home : 59   at_home : 20   course    :145   father: 90  
 1st Qu.:2.000   health  : 34   health  : 18   home      :109   mother:273  
 Median :2.000   other   :141   other   :217   other     : 36   other : 32  
 Mean   :2.522   services:103   services:111   reputation:105               
 3rd Qu.:3.000   teacher : 58   teacher : 29                                
 Max.   :4.000                                                              
                                                                            
   traveltime      studytime        failures      schoolsup famsup     paid    
 Min.   :1.000   Min.   :1.000   Min.   :0.0000   no :344   no :153   no :214  
 1st Qu.:1.000   1st Qu.:1.000   1st Qu.:0.0000   yes: 51   yes:242   yes:181  
 Median :1.000   Median :2.000   Median :0.0000                                
 Mean   :1.448   Mean   :2.035   Mean   :0.3342                                
 3rd Qu.:2.000   3rd Qu.:2.000   3rd Qu.:0.0000                                
 Max.   :4.000   Max.   :4.000   Max.   :3.0000                                
                                                                               
 activities nursery   higher    internet  romantic      famrel     
 no :194    no : 81   no : 20   no : 66   no :263   Min.   :1.000  
 yes:201    yes:314   yes:375   yes:329   yes:132   1st Qu.:4.000  
                                                    Median :4.000  
                                                    Mean   :3.944  
                                                    3rd Qu.:5.000  
                                                    Max.   :5.000  
                                                                   
    freetime         goout            Dalc            Walc      
 Min.   :1.000   Min.   :1.000   Min.   :1.000   Min.   :1.000  
 1st Qu.:3.000   1st Qu.:2.000   1st Qu.:1.000   1st Qu.:1.000  
 Median :3.000   Median :3.000   Median :1.000   Median :2.000  
 Mean   :3.235   Mean   :3.109   Mean   :1.481   Mean   :2.291  
 3rd Qu.:4.000   3rd Qu.:4.000   3rd Qu.:2.000   3rd Qu.:3.000  
 Max.   :5.000   Max.   :5.000   Max.   :5.000   Max.   :5.000  
                                                                
     health         absences           Grades   
 Min.   :1.000   Min.   :-1.000   10/10/10:  9  
 1st Qu.:3.000   1st Qu.: 0.000   10/9/9  :  7  
 Median :4.000   Median : 4.000   11/11/11:  7  
 Mean   :3.554   Mean   : 5.691   16/15/15:  7  
 3rd Qu.:5.000   3rd Qu.: 8.000   8/9/10  :  7  
 Max.   :5.000   Max.   :75.000   11/11/10:  6  
                                  (Other) :352
> 
> # View a histogram of the age variable
> hist(students3$age)
> 
> # View a histogram of the absences variable
> hist(students3$absences)
> 
> # View a histogram of absences, but force zeros to be bucketed to the right of zero
> hist(students3$absences,right=FALSE)
> 

# (2)
# View a boxplot of age
boxplot(students3$age)

# View a boxplot of absences
boxplot(students3$absences)
