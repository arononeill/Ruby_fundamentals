class Spaceship
  def batten_hatches
    puts 'Batten the hatches'
  end
end


class Spaceship
  def batten_hatches
    puts 'Avast'
  end
end

ship = Spaceship.new
ship.batten_hatches

# Avast is displayed as the 2nd definiton for Spaceship overwrites the 1at definiton.