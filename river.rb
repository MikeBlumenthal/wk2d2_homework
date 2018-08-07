class River

  attr_reader :name, :fish
  attr_accessor :fish

  def initialize(name, fish = [])
    @name = name
    @fish = fish
  end

  def count_fish
    return @fish.length
  end

  def lose_fish
    return @fish.pop
  end

end
