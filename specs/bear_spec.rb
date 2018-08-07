require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class Beartest < MiniTest::Test

  def setup
    @bear1 = Bear.new("Bert", "brown")
  end

end
