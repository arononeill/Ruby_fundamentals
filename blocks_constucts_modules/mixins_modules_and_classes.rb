# An example of how a class method and module method can be accessed by nesting the class method, including
# the module Docking whilst extending the module method.

# There are 2 ways of doing this program and are as follows :
module Docking
  module ClassMethods
    def get_docking_params
      # returns params common to all spaceships
    end
  end

  def dock
    # ..
  end
end

class Spaceship
  include Docking
  extend Docking::ClassMethods
end

# This is a work-around method of carrying out the program
module Docking
  module ClassMethods
    def get_docking_params
      # returns params common to all spaceships
    end
  end

  def self.included(base)
    base.extends(ClassMethods)
  end

  def dock
    # ..
  end
end

# This ensures that only include has to be called and extend isn't needed also
class Spaceship
  include Docking
end