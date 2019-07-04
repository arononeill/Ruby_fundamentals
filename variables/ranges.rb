# A program to illustrate the functions of the range class

puts (1..10).class
puts (1..10).begin
puts (1..10).end
puts (1..10).include?(11)
puts (1..10).map { |v| v * 2 }
puts ("aa".."ad").each { |v| puts v }
puts (1.0..5.0)