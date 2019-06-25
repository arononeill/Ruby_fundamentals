class Spaceship
  def launch
    batten_hatches
    # do other fun launch activities
  end


  attr_reader :call_sign
  protected :call_sign

  def initialize
    @call_sign = "Dreadnought"
  end


  def call_sign_matches?(other) # Compares a passed object against the call sign
    call_sign == other.call_sign
  end
end


class SpritelySpaceship < Spaceship
  def initialize
    @call_sign = "Fast cruiser"
  end
end

ship = Spaceship.new
fast_ship = SpritelySpaceship.new

puts fast_ship.call_sign_matches?(ship)
# puts ship.call_sign :- This line causes an error as call_sign is a protected attribute