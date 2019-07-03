[1, 2, 3].each do
  puts "Message text"
end

ships = Spaceship.all
# This is known as a block and it will display each ship name by iterating over each ship until finished
ships.each { |ship| puts ship.name}