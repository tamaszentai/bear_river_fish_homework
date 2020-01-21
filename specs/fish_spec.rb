require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')


class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Salmon")
    @fish2 = Fish.new("Bass")
    @fish3 = Fish.new("Cod")
    @fish4 = Fish.new("Hake")
    @fish5 = Fish.new("Trout")
  end


  def test_get_name()
    assert_equal("Hake", @fish4.name)
  end

end
