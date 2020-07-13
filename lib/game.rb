class Game
  attr_reader :player1, :player2, :game_board
  attr_accessor :player_choice, :not_the_end

  def initialize(player1, player2, player_choice, game_board)
    @player1 = player1
    @player2 = player2
    @player_choice = player_choice.player_choice
    @game_board = game_board
    @not_the_end = true
    @@counter = 0
  end

  def all_equal_p1(arr, player_icon)
    if arr[0] == player_icon && arr[1] == player_icon && arr[2] == player_icon
      puts "#{player1.name} wins!"
      return @not_the_end = false
    end
  end

  def all_equal_p2(arr, player_icon)
    if arr[0] == player_icon && arr[1] == player_icon && arr[2] == player_icon
      puts "#{player2.name} wins!"
      return @not_the_end = false
    end
  end

  def check_win
    all_equal_p1(game_board.board[0..2], player1.first_player_icon) ||
    all_equal_p1(game_board.board[3..5], player1.first_player_icon) ||
    all_equal_p1(game_board.board[6..8], player1.first_player_icon) ||
    all_equal_p1([game_board.board[0], game_board.board[3], game_board.board[6]], player1.first_player_icon) ||
    all_equal_p1([game_board.board[1], game_board.board[4], game_board.board[7]], player1.first_player_icon) ||
    all_equal_p1([game_board.board[2], game_board.board[5], game_board.board[8]], player1.first_player_icon) ||
    all_equal_p1([game_board.board[0], game_board.board[4], game_board.board[8]], player1.first_player_icon) ||
    all_equal_p1([game_board.board[2], game_board.board[4], game_board.board[6]], player1.first_player_icon) ||
    all_equal_p2(game_board.board[0..2], player2.second_player_icon) ||
    all_equal_p2(game_board.board[3..5], player2.second_player_icon) ||
    all_equal_p2(game_board.board[6..8], player2.second_player_icon) ||
    all_equal_p2([game_board.board[0], game_board.board[3], game_board.board[6]], player2.second_player_icon) ||
    all_equal_p2([game_board.board[1], game_board.board[4], game_board.board[7]], player2.second_player_icon) ||
    all_equal_p2([game_board.board[2], game_board.board[5], game_board.board[8]], player2.second_player_icon) ||
    all_equal_p2([game_board.board[0], game_board.board[4], game_board.board[8]], player2.second_player_icon) ||
    all_equal_p2([game_board.board[2], game_board.board[4], game_board.board[6]], player2.second_player_icon)
  end

  def a_draw
    return unless @@counter == 9 && @not_the_end
    @not_the_end = false
    puts "It's a draw!"
  end

  def game_on_p1
    if game_board.board.map! { |num| num == player_choice ? "#{player1.first_player_icon}" : num }
      puts game_board.display_board
      print "\n"
      @@counter += 1
    end
    check_win
    a_draw
  end

  def game_on_p2
    if game_board.board.map! { |num| num == player_choice ? "#{player2.second_player_icon}" : num }
      puts game_board.display_board
      print "\n"
      @@counter += 1
    end
    check_win
    a_draw
  end
end
