def debug_only(param = nil, &block)
  puts "Param class: #{param.class}"
  puts "Block class: #{block.class}" if block_given?
end

# The & signals it's being passed as a proc
debug_only(p) # param == p
debug_only(&p) # param == nil, block == p

p names = ["bob", "steve", "luke", "james", "mike"]

# These are 2 ways to convert the strings into uppercase :
p upper_names = names.map { |name| name.upcase }

# Here the & signals that .map should treat the argument as a block and so converts it's strings to uppercase
p upper_names = names.map(&:upcase)
