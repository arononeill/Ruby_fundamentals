def produce_fleet(days_to_complete, *types)
  # ...
end

# *types is an array and the 3 values passed as the 3nd [parameter are stored in the array called types
produce_fleet(10, :firefighter, :firefighter, :explorer)

# Or the array could be assigned the values before the function is called
types = [:firefighter, :firefighter, :explorer]
produce_fleet(15, *types)
