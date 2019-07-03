arr = [] # Declaring an array variable
arr = Array.new(3) # Initialising a new array with 3 elements
Array.new(3, "abc") # Initialising a 3 element array with values of "abc"
arr.first.upcase! # Changes the first element to "ABC", and in doing so, all other elements are changed to this
# as they are all copies of each other thanks to the way it was initialised

arr.new(3) {"abc"} # Creates 3 individual elements in an array
arr.last.upcase! # Used to show that the elements are not copies of each other, output : "abc", "abc", "ABC"
arr = Array.new(3) { Array.new(3) } # creates a 2-D array with all 9 elements being nil

%w(array of words) # Output : ["array", "of", "words"]
%w(array\ of words) # Output : ["array of", "words"]
%w(1\tarray of #{2+2} words) # Output : ["1\tarray", "of", "4", "words"]