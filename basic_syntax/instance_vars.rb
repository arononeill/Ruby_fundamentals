class Spaceship
  def launch(destination)
    @destination = destination # This an instance variable, created when the method is called, only visible inside the methof
    # go towards destination
  end

  #this method returns the instance variable needed to display
  def destination
    @destination
  end

end

ship = Spaceship.new
ship.launch("Earth")
puts ship.inspect
# p ship :- This produces the same output as the line above

puts ship.destination