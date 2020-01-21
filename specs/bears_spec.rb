require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bears')
require_relative('../fish')
require_relative('../river')


class BearsTest < MiniTest::Test

  def setup()
    @bear = Bears.new("Yogi", "Grizzly")

    @river = River.new("Amazon")


    @fish = Fish.new("Salmon")
    @fish2 = Fish.new("Bass")
    @fish3 = Fish.new("Cod")
    @fish4 = Fish.new("Hake")
    @fish5 = Fish.new("Trout")

  end

  def test_get_name()
  assert_equal("Yogi", @bear.name)
  end

  def test_get_type()
  assert_equal("Grizzly", @bear.type)
  end


  def test_take_fish_from_river()
    @river.adding_fish(@fish)
    @river.adding_fish(@fish2)
    @river.adding_fish(@fish3)
    @river.adding_fish(@fish4)
    @river.adding_fish(@fish5)
    @bear.take_fish_from_river(@fish)
    assert_equal(4, @river.count_fish())
  end





end
