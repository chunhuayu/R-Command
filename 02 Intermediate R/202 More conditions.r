### Throw in more conditionals
# In the previous exercise, you simulated the interaction between a driver and a driver's assistant:
# When the speed was too high, "Slow down!" got printed out to the console, resulting in a decrease of your speed by 7 units.

# There are several ways in which you could make your driver's assistant more advanced. 
# the assistant could give you different messages based on your speed or provide you with a current speed at a given moment.

# A while loop similar to the one you've coded in the previous exercise is already available in the editor. 
# It prints out your current speed, but there's no code that decreases the speed variable yet, which is pretty dangerous. 
# Can you make the appropriate changes?

### INSTRUCTIONS
# If the speed is greater than 48, have R print out "Slow down big time!", and decrease the speed by 11.
# Otherwise, have R simply print out "Slow down!", and decrease the speed by 6.

### R
> # Initialize the speed variable
> speed <- 64
> 
> # Extend/adapt the while loop
> while (speed > 30) {
    print(paste("Your speed is",speed))
    if (speed > 48 ) { 
      print("Slow down big time!")
      speed = speed -11
    } else { 
      print("Slow down!")
      speed = speed -6
    }
  }
[1] "Your speed is 64"
[1] "Slow down big time!"
[1] "Your speed is 53"
[1] "Slow down big time!"
[1] "Your speed is 42"
[1] "Slow down!"
[1] "Your speed is 36"
[1] "Slow down!"
> 
