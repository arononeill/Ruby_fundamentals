# This will execute the code and skip the rescue (exception) when batten_hatches and light_seatbelt_sing return
# a true value meaning that they have been executed correctly.
def launch
  batten_hatches
  light_seatbelt_sign
  true
rescue
  puts "Exception intercepted"
  false
end

# This is a more detailed exception handling case allowing you to catch certain exceptions
def launch
  batten_hatches
  light_seatbelt_sign
  true
rescue LightError
  puts "lights broken"
  true
rescue StandardError => e
  puts e.message
  false
end

# You have to put the more detailed exception handling first as a StandardError will throw an exception and will
# not catch the LightError if its placed before it.