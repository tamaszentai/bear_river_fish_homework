require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')


class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon")

    @fish = Fish.new("Salmon")
    @fish2 = Fish.new("Bass")
    @fish3 = Fish.new("Cod")
    @fish4 = Fish.new("Hake")
    @fish5 = Fish.new("Trout")
  end


  def test_get_name()
    assert_equal("Amazon", @river.name)
  end

  def test_count_fish()
    assert_equal(0, @river.count_fish)
  end

  def test_adding_fish()
    @river.adding_fish(@fish)
    @river.adding_fish(@fish2)
    @river.adding_fish(@fish3)
    @river.adding_fish(@fish4)
    @river.adding_fish(@fish5)
    assert_equal(5, @river.count_fish())
  end

  # def test_losing_fish()
  #   @river.adding_fish(@fish)
  #   @river.adding_fish(@fish2)
  #   @river.adding_fish(@fish3)
  #   @river.adding_fish(@fish4)
  #   @river.adding_fish(@fish5)
  #
  # end

end
