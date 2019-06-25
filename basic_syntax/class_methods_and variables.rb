class Spaceship
  def self.thruster_count
    2
  end
end

# Class methods need to be called using the class name followed by .method_name
Spaceship.thruster_count

ship = Spaceship.new
ship.thruster_count  # This doesn't work