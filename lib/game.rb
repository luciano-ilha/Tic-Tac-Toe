class Game
  attr_accessor :player1, :player2, :player_choice, :game_board

  def initialize(player1, player2, player_choice, game_board)
    # @player_icon = [player1.first_player_icon, player2.second_player_icon]
    @player1 = player1
    # @player2 = player2
    @player_choice = player_choice.player_choice
    @game_board = game_board
    # @not_the_end = true
    @@counter = 0
  end

  # def all_equal

  # end

  # def check_win(player_icon)
  #   all_equal(board[0..2], player_symbol) ||
  #   all_equal(board[3..5], player_symbol) ||
  #   all_equal(board[6..8], player_symbol)
  # end

  # def a_draw
  #   return unless @@counter == 9 && @not_the_end
  #   @not_the_end = false
  #   puts "It's a draw!"
  # end

  def game_on_p1
    if game_board.board.map! { |num| num == player_choice ? "#{player1.first_player_icon}" : num }
      puts game_board.display_board
      print "\n"
      @@counter += 1
    end
    # the_end
    # a_draw
  end

  # def game_on_p2
  #   if game_board.board.map! { |num| num == player1_choice ? "#{player1.first_player_icon}" : num }
  #     puts game_board.display_board
  #     print "\n"
  #     @@counter += 1
  #   end
  #   # the_end
  #   # a_draw
  # end
end
