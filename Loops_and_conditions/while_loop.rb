loop do
  go_another_light_year
  puts 'Message text'
end

# More examples of loops

# acts like a for loop displaying each number in an order
10.upto(20) { |i| puts i}
20.upto(10) { |i| puts i}

# This will display whats inside the block however amount of times you tell it to (eg, 3)
3.times { puts "Desired message"}