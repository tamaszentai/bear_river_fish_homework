require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')


class RiverTest < MiniTest::Test

  def setup()
  end

end
