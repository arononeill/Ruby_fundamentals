# An alias method allows us to copy a method, giving it a different name whilst retaining access to the
# original method

class String
  def space_out
    chars.join(" ")
  end

  # original_size is the new method name which is a copy of the old method called size
  alias_method "original_size", "size"

  def size
    original_size * 2 - 1
  end
end

puts "abc".space_out
puts "abc".size
