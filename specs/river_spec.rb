require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class Rivertest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Percy Perch")
    @fish2 = Fish.new("Roddy Roach")

    @river1 = River.new("Wye", [@fish1, @fish2])
  end

  def test_river_name
    assert_equal("Wye", @river1.name)
  end

  def test_fish_count
    assert_equal(2,@river1.count_fish)
  end

  def test_river_has_fish
    assert_equal(2, @river1.count_fish)
  end

  def test_lose_fish
    @river1.lose_fish
    assert_equal(1, @river1.count_fish)
  end

end
