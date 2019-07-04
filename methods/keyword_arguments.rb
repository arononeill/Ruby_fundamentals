# A program to highlight how to use keyword arguments in a function


def produce_spaceship(type = :firefighter, size: :m, **custom_components)
  components = {engine: :standard,
                seats: :standard,
                subwoofer: :none}

  components.merge!(custom_components)
end

produce_spaceship(:yacht, size: :s, engine: :rolls_royce, seats: :leather)

