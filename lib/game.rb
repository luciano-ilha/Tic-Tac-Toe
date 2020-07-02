class Game
  attr_reader :players, :board

  def initialize(player1, player2)
    @players = [player1, player2]
    @board = Board.new
  end

  def player_start
    @players[0]
  end

  def player_next
    @players[1]
  end

  def switch_player
    @players.reverse!
  end
end
