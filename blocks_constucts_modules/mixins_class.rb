# This program shows how to access module methods from a class

module Docking
  def get_docking_params
    # return params common to all spaceships
  end
end

class Spaceship
  extend Docking
end