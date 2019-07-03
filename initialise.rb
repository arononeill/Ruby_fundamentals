class Spaceship
  def initialize(name, cargo_module_count)
    @name = name
    @cargo_hold = CargoHold.new(cargo_module_count)
    @power_level = 100
  end
end

# This shows how to initialise a new object by passing the required parameters.
ship = Spaceship.new("Dreadnought", 4)
p ship