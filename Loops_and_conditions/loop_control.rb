# next starts the next iteration of the loop

while message = comms.get_message
  # whenever the message 'sync' comes in, next will jump the while loop back to the start
  next if message.type == "sync"
  message.process
end

while message = comms.get_message
  message.process
  # break will make the program exit the while loop
  break if message.type == "voice"
end

text = while message = comms.get_message
         message.process
         # break will make the program exit the while loop
         # The value for message will be assigned to the variable text
         break message.text if message.type == "voice"
       end

i = 0
while i < 3
  print "Please enter a positive number: "
  input = gets.to_i

  # redo will cause the while loop to start again until it's condition is met
  redo if input <= 0
  i += 1
end