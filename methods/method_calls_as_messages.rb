case input
when :up_arrow then ship.tilt_up
when :down_arrow then ship.tilt_down
when :left_arrow then ship.turn_left
when :right_arrow then ship.turn_right
else
  "Error"
end

handlers = {up_arrow: :tilt_up,
            down_arrow: :tilt_down,
            left_arrpw: :turn_left,
            right_arrow: :turn_right}

ship.send(handlers[gets])

# __send__() is an alias for the send() method, in case you declare a method with name send in your program
ship.__send__(handlers[input])