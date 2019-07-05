# This program will provide examples of how modules are used

module Spaceship
  # ...
end

module API
  def self.hatch_list # module functions have to be defined as self.
    # retrieve hatch list
  end
end

hatches = API.hatch_list

module SpaceStuff
  class Spaceship
    # ...
  end
end

# This is how you access a class inside a module
ship = SpaceStuff::Spaceship.new

# You are able to nest a module within a module and it's accessed like so
module SpaceStuff
  module API
    def self.hatch_list
      # retrieve hatch list
    end
  end
end
hatches = SpaceStuff::API.hatch_list