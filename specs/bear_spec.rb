require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class Beartest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Percy Perch")
    @fish2 = Fish.new("Roddy Roach")
    @river1 = River.new("Tamar", [@fish1, @fish2])
    @bear1 = Bear.new("Bert", "brown", "Grrrrr")
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

  def test_bear_takes_fish
    @bear1.eats_fish(@river1)
    assert_equal(1, @bear1.stomach.length)
    assert_equal(1,@river1.count_fish)
  end

  def test_bear_makes_noise
    actual = @bear1.roar
    assert_equal("Grrrrr!", actual)
  end

  def test_anything_in_stomach__nothing
    assert_equal("I'm hungry!", @bear1.stomach_contents)
  end

  def test_anything_in_stomach__something
    @fish = Fish.new("Donny Dab")
    @bear2 = Bear.new("Bruno", "brown", "Growl", [@fish])
    assert_equal("I've had 1 fish!", @bear2.stomach_contents)
  end
  

end
