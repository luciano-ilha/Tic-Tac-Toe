class Players
  attr_reader :name, :players 

  def initialize(name, player1, player2)
    @name = name
    @players = [player1, player2]
  end

  def current_player
    @players[0]
  end

  def next_player
    @players[1]
  end

  def switch_players
    @players.reverse
  end
end
