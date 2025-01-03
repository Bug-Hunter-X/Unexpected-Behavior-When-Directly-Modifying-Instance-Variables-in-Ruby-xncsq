```ruby
class MyClass
  attr_reader :value # Use attr_reader for controlled access

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

# Attempting to modify directly will now raise an error (NoMethodError)
#my_object.instance_variable_set(:@value, 20) 
#puts my_object.value 

#If modification is really necessary, consider a setter method with validation or side effects
class MyClass
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def value=(new_value)
    if new_value >= 0 #Example validation
       @value = new_value
    else
       raise "Value must be non-negative"
    end
  end
end

my_object = MyClass.new(10)
my_object.value = 20 #Modify through the setter
puts my_object.value
my_object.value = -5 #raises exception
```