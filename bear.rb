class Bear

  attr_reader :name, :type, :voice, :stomach
  attr_accessor :stomach

  def initialize(name, type, voice, stomach = [])
    @name = name
    @type = type
    @voice = voice
    @stomach = stomach
  end

  def eats_fish(river)
    @stomach << river.lose_fish
  end

  def roar
    return "#{@voice}!"
  end

  def stomach_contents
    if @stomach.length > 0
      return "I've had #{@stomach.length} fish!"
    else
      return "I'm hungry!"
    end
  end

end
