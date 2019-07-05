# Using mixins eliminates the need for inheritance in ruby
# Makes sure to use 'include function_name' when defining a class which inherits another modules's function

module AirControl
  # air pumping, maintenance and regeneration
  def measure_oxygen
    # ...
  end
end

class Spaceship
  include AirControl
  # ...
end

ship = Spaceship.new
ship.measure_oxygen