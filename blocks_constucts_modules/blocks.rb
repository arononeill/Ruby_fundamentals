# A block is a piece of code between do end keywords. Blocks have to be passed as an argument in a method.
# This is a method which can take a block of code only in debug mode

class Spaceship
  def debug_only
    return nil unless @debug # Returns nil if debug mode isn't on
    return nil unless block_given? # Checks if a block has been passed to the method
    puts "Running debug code..."
    yield # Executes the block
  end
end

ship.debug_only # It will do nothing as no block has been passed

# It will be execute if debug mode is on
ship.debug_only do
  puts "This is the debug output"
end

class Spaceship
  def debug_only
    return nil unless @debug # Returns nil if debug mode isn't on
    return nil unless block_given? # Checks if a block has been passed to the method
    puts "Running debug code..."
    yield @debug_attrs # Executes the block
  end
end

# The value of yield is the result of executing the last expression in the block
ship.debug_only do |attrs|
  puts "Debug attr values: #{attrs.inspect}"
end