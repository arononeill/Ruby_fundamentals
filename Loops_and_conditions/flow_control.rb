lander = Lander.locate(lander_id) and lander.recall

lander = Lander.locate(lander_id)
lander.recall if lander


# These next two mean the same
if engine.cut_out?
  engine.restart or enable_emergency_power # This just starts the engine through one of these methods.
end

if engine.cut_out?
  enable_emergency_power unless engine.restart # Run the emergency power unless the engine restart proceeds
end