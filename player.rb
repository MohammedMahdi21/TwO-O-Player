class Player
  def initialize(name)
    @Player = name
    @life = 3
  end

  def lose_life 
    life - 1
  end
end
