lander_count = 11

if lander_count > 10
  puts "Launching probe"
else
  puts "Waiting for probes to return"
end

# This can also be defined like so

message = if lander_count > 10
  "Launching probe"
else
  "Waiting for probes to return"
end

puts message

a = b = 10