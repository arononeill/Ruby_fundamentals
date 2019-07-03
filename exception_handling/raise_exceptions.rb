def batten_hatches
  # ...
  raise "message"
  # ...
end

def batten_hatches
  # you are able to call an exception handling class whilst at the same time, still displaying the error message
  raise HatchError, "message"
  # ...
end


rescue HatchError => err
  # it will raise the exception stored in the special global variable $!, this variable refers to the last
  # raised excpetion
  puts $!.message
  raise
  # you can pass the exception on to a more generic handler by calling raise
end
