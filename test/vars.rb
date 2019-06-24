lander_count = 10 # visible throughout the program

def report
  lander_count = 5 # only visible inside the method defined
  puts lander_count
end

report # report is a method which doesn't take any arguments

puts lander_count

$log_level = "debug" # Global variable (mot recommended)