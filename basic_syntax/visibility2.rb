class Spaceship
  def launch
    batten_hatches
    # do other fun launch activities
  end


  def batten_hatches
    puts "Batten the hatches"
  end
  private :batten_hatches
end


class SpritelySpaceship < Spaceship
  def initialize
    batten_hatches
  end
end

ship = SpritelySpaceship.new # You are able to access a private method from a parent class through the subclass