# Parallel Assignment & the Splat Operator

a, b = 1, 2 # a == 1, b == 2
a = 1, 2, 3, 4 # a == [1, 2, 3, 4]

def get_values
  [1, 2, 3, 4]
end

a, b = get_values # a == 1, b == 2

a, *b = get_values # a == 1, b == [2, 3, 4]
a, *b, c = get_values # a == 1, b == [2, 3], c == 4

r = (0..10) # declaring a range
puts [1, 2, *r] # *array_name gets every element within that array/range (called a splat operator)