require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")

class Rivertest < MiniTest::Test

  def setup
    @river1 = River.new("Wye")
  end

  def test_river_name
    assert_equal("Wye", @river1.name)
  end

  def test_river_has_fish
    assert_equal(0, @river1.fish.length)
  end
  
end
