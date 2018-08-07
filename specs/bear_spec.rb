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

  def test_bear_has_type
    assert_equal("brown", @bear1.type)
  end

  def test_bear_has_stomach
    assert_equal(0, @bear1.stomach.length)
  end
  
end
