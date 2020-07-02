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

  def play
    while true
      puts "#{game.current_player.name}, where would you like to place your token?"
      print "Enter a tile number (1-9): "
      player_choice = gets.chomp.to_i
      update_board.insert(player_choice - 1)

      puts " #{update_board[0]} | #{update_board[1]} | #{update_board[2]} "
      puts '-----------'
      puts " #{update_board[3]} | #{update_board[4]} | #{update_board[5]} "
      puts '-----------'
      puts " #{update_board[6]} | #{update_board[7]} | #{update_board[8]} "

      game.switch_player
      if update_board.length > 9
        puts "Game over"
        game.board.display_board
        return
      else
        switch_players
        update_board.insert(player_next_choice - 1)

        puts " #{update_board[0]} | #{update_board[1]} | #{update_board[2]} "
        puts '-----------'
        puts " #{update_board[3]} | #{update_board[4]} | #{update_board[5]} "
        puts '-----------'
        puts " #{update_board[6]} | #{update_board[7]} | #{update_board[8]} "

      end
    end
  end

  # def over?
  #   board.win?(last_player.move) || board.draw?
  # end

  # def win?
  #   board.win?(last_player.move)
  # end

end
