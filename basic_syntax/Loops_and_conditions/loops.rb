# *** A while loop ***

while high_alert?
  sound_system.play_siren_cycle
end

while high_alert? do sounds_system.play_siren_cycle end

# *** An until loop ***

# An until loop is the inverse of a while loop
until ship.at_cruising_velocity?
  ship.accelerate
end

until ship.at_cruising_velocity? do ship.accelerate end

ship.accelerate until ship.at_cruising_velocity?