require "minitest/autorun"

# This is how you include other ruby files, this include the folder module7 which is inside the lib folder
require_relative "../lib/module7"
include Module7

# describe is a method which takes a block
describe Spaceship do
  before do
    @ship = Spaceship.new("Serenity")
  end

  # Error handling to check if the name of the new ship == 'Serenity'
  describe "when asked for a name" do
    it "must provide one" do
      @ship.name.must_equal "Serenity"
    end
  end
end

# This error handling code above is the equivalent to the testing framework 'rspec'
# Rspec can be installed using the command in the terminal : 'gem install rspec'