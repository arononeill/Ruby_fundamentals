# This program shows how the enumerable method is used

puts [1, 2, 3].map { |v| v * 10 } # Output : [10, 20, 30]
puts [1, 2, 3].reduce(0) { |sum, v| sum + v } # Output : [6]
puts [3, 1, 3].sort # Output : [1, 3, 3]
puts [1, 2, 3, 4, 5].select { |n| n.even? } # Output : [2, 4]
puts [1, 2, 3, 4, 5].each_cons(2) { |v| p v } # Output : [1, 2] [2, 3] [3, 4] [4, 5]