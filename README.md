# Unexpected Behavior When Directly Modifying Instance Variables in Ruby

This example showcases a potential issue in Ruby when directly modifying instance variables using `instance_variable_set` without considering the implications on accessor methods.  Direct manipulation can lead to inconsistencies if the class relies on the accessor methods for side effects or data validation.