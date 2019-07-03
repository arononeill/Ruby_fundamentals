def batten_hatches
  hatch_file = File.open("hatches.txt")
  # ...
  raise HatchError, "Door jammed" if door.jammed?
  # ...
  true
rescue SystemCallError => e
  # handle system call errors
  # false
# This else will be executed if no exceptions have been thrown
else
  puts "no exceptions"
# ensure makes sure that the code directly after it is carried out no matter of the excpetion handling.
ensure
  hatch_file.close if hatch_file
end