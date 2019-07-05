# Lambdas are used to take a block and convert it into a proc

# There are 2 ways for creating lambdas :
lmb = lambda {|bla| "I'm also a proc, and I say #{bla}" }
also_lmb = ->(bla) { "I'm also a proc, and I say #{bla}" } # You can't have spaces between the arrow and variable

#