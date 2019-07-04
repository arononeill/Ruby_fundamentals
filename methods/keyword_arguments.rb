# A program to highlight how to use keyword arguments in a function


# Here, the elements of custom_components are given default values and whatever needs to be given a different
# value, can be done when the function is called
def produce_spaceship(type = :firefighter, size: :m, **custom_components)
  components = {engine: :standard,
                seats: :standard,
                subwoofer: :none}

  components.merge!(custom_components)
end

# Whatever custom component parts differ to the default values, are defined when the function is called
produce_spaceship(:yacht, size: :s, engine: :rolls_royce, seats: :leather)

