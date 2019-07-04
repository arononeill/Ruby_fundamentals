# Each hash pairing contains a key value pair
# A has is an array that just has two element pairings.
puts h = {a: "a", b: "b"}
puts h[:a] # Output : a

puts h[:a] = "z" # Output : z || hash array is now {:a=>"z", :b=>"b"}
puts h[:c] = "v" # This is how you add an element || hash array is now {:a=>"z", :b=>"b", :c=>"v"}

# To iterate over the values in the array use either of the following :
h.each { |v| p v }
h.each { |k, v| puts "#{k}: #{v}" }