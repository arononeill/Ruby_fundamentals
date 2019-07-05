# Procs act the same as blocks, their purpose is to drop code into a method but you get more felibilty as they are
# named and can be passed around like a regular object.

def debug_only(param = nil, &block) # The & in the block variable is used for blocks
  puts "Param class: #{param.class}"
  puts "Block class: #{block.class}" if block_given?
end

debug_only{}
puts "---"
p = Proc.new{|bla| puts "I'm a proc that says #{bla}!"}

debug_only(p)
puts "---"
debug_only(&p)

# There's 2 ways of creating proc objects:
p = Proc.new{|bla| puts "I'm s proc that says #{bla}!" }

# proc is an alias for Proc.new
p = proc {|bla| puts "I'm a proc that says #{bla}!" }

# These are the several ways to execute the code stored in the proc
p.call "yay"
p.yield "wow!"
p.("nothing")
p["hello"]