require "minitest/autorun"

# This is how you include other ruby files, this include the folder module7 which is inside the lib folder
require_relative "../lib/module7"
include Module7

class TestSpaceship < MiniTest::Unit::TestCase
  def setup
    @ship = Spaceship.new("Serenity")
  end

  def test_name
    assert(@ship.name == "Serenity")
  end

  def test_probes
    @ship.probes += [Probe.new, Probe.new]
    assert_equal(2, @ship.probes.size)
  end

  # Checks whether an object is an instance of a particular class
  def test_instance
    assert_instance_of(Spaceship, @ship)
  end

  # Tests whether a block of code raises any exceptions
  def test_exception
    assert_raises { nil.name }
  end
end