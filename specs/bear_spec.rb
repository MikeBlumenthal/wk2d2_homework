require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class Beartest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Bert", "brown")
  end

  def test_bear_has_name
    assert_equal("Bert", @bear1.name)
  end
end
