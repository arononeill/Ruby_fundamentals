class Spaceship
  @@thruster_count = 2
  def self.thruster_count
    @@thruster_count
  end
end


class SpritelySpaceship < Spaceship
  @@thruster_count = 4
end


class EconolineSpaceship < Spaceship
  @@thruster_count = 1
end

puts SpritelySpaceship.thruster_count

# @@ declares a class variable but all subclasses share the same value for that variable if they have that
# variable declared. SO the value displayed here is 1