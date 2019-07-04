# A program to show how methods can be defined

# Here, the parameters are optional, so if no values are passed to this function, they're given the default values
def produce_spaceship(type = :firefighter, size = :xl)
  # ...
end

# Here, the 2nd parameter calls a function to get its value whilst the 1st parameter is optional
def produce_spaceship(type = :firefighter, size = calc_default_size(type))
  # ...
end

def produce_spaceship(type = :firefighter, size = :xl, fuel_tank_volume, engine_count)
  # ...
end

# Sets the engine_count to 4 and gives the parameters for type and size the default values declared
factory.produce_spaceship(4)

# This is how you call a function with the required parameters
produce_spaceship(:firefighter, :m, 100, 4)