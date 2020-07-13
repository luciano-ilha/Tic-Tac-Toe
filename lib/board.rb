class Board
  attr_reader :board, :board_rows, :board_columns, :board_diagonals, :player_name, :player_start, :player_next

  def initialize(player1, player2)
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @board_rows = [[board[0], board[1], board[2]], [board[3], board[4], board[5]], [board[6], board[7], board[8]]]
    @board_columns = [[board[0], board[3], board[6]], [board[1], board[4], board[7]], [board[2], board[5], board[8]]]
    @board_diagonals = [[board[0], board[4], board[8]], [board[2], board[4], board[6]]]
    @player_name = [player1.name, player2.name]
    @player_start = players_shuffle
    @player_next = switch_players
  end

  def display_board
    display_board =
    "#{board[0]} | #{board[1]} | #{board[2]}\n" \
    "---------\n" \
    "#{board[3]} | #{board[4]} | #{board[5]}\n" \
    "---------\n" \
    "#{board[6]} | #{board[7]} | #{board[8]}\n" \
  end

  def players_shuffle
    @player_name.shuffle
  end

  def switch_players
    @player_start.reverse
  end
end
