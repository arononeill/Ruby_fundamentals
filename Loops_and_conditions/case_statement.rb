# Here I will display the different ways to write a case statement

case distance_to_dock
when "far away"
  lander.maintain_thrust
when "coasting time"
  lander.kill_thrust
when "collission imminent"
  lander.reverse_thrust
end

thrust_power = case distance_to_dock
               when "far away"
                 100
               when "coasting time"
                 0
               when "collission imminent"
                 -100
               end

thrust_power = case distance_to_dock
               when "far away" then 100
               when "coasting time" then 0
               when "collission imminent" then -100
               end

case
when distance_to_dock > 100
  lander.maintain_thrust
when distance_to_dock > 2
  lander.kill_thrust
else # Provides you with the ability to provide a catch clause when the when clauses haven't been met.
  lander.reverse_thrust
end

case unit
when Lander
  lander.park
when Probeprobe.retrieve_sample
  probe.transport_to_storage
else
  activate_alarm("Unidentified unit")
end