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

ship = Spaceship.new
# ship.batten_hatches :- This line will not work as batten_hatches is declared as a private method

# The send method from the object class envokes it and allows you to bypass a private method essentially
ship.send :batten_hatches
