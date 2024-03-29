class Spaceship
  @thruster_count = 2

  def self.thruster_count
    @thruster_count
  end
end


class SpritelySpaceship < Spaceship
  @thruster_count = 4
end


class EconolineSpaceship < Spaceship
  @thruster_count = 1
end

puts SpritelySpaceship.thruster_count
puts EconolineSpaceship.thruster_count
puts Spaceship.thruster_count

# With instance variables, each class, parent and subclasses get their own copy of the variable
# Therefore the result disaplyed here is 4 1 2
