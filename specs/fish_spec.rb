require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class Fishtest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Terry Tench")
  end

  def test_fish_has_a_name
    assert_equal("Terry Tench", @fish1.name)
  end
  
end
