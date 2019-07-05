# This program illustrates how instance variables work in a module
# 'oxygen_level' and 'started' are methods which are called, and which return a variable.
# This variable is then assigned to the corresponding variable

module AirControl
  attr_accessor :oxygen_level

  def measure_oxygen
    # ...
    # self.oxygen_level = measured value
  end

  def start_pump
    @pump_status = :started
  end
end