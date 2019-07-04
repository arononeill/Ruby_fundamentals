arr = [] # Declaring an array variable
arr = Array.new(3) # Initialising a new array with 3 elements
arr = Array.new(3, "abc") # Initialising a 3 element array with values of "abc"

arr.first.upcase! # Changes the first element to "ABC", and in doing so, all other elements are changed to this
# as they are all copies of each other thanks to the way it was initialised

arr = Array.new(3) {"abc"} # Creates 3 individual elements in an array
arr.last.upcase! # Used to show that the elements are not copies of each other, output : "abc", "abc", "ABC"
arr = Array.new(3) { Array.new(3) } # creates a 2-D array with all 9 elements being nil

arr = %w(array of words) # Output : ["array", "of", "words"]
arr = %w(array\ of words) # Output : ["array of", "words"]
arr = %w(1\tarray of #{2+2} words) # Output : ["1\tarray", "of", "4", "words"]

# These are the 2 ways to display an array
p arr
puts arr.inspect

arr = [1, 2, 3, 4, 5]
p arr[1] # Output : 2
p arr[-2] # Output : 4
p arr[1..3] # Output : 2, 3, 4
p arr[1] = "string value" # Arr contents : [1, "string value", 3, 4, 5]
p arr[2..3] = [:east, :west] # Arr contents : [1, "string value", :east, :west, 5]
p arr << 10 # Arr contents : [1, "string value", 3, 4, 5, 10], appends 10 to the end of the array
p [1, 2] + [3, 4] # Output : [1, 2, 3, 4]
p [1, 2] * 3 # Output : [1, 2, 1, 2, 1, 2]
p [1, 2, 3, 4, 5] - [2, 5] # Output : [1, 3]