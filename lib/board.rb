class Board
  attr_reader :board, :board_rows, :board_columns, :board_diagonals

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @board_rows =[[1,2,3], [4,5,6], [7,8,9]]
    @board_columns = [[board[0], board[3], board[6]], [board[1], board[4], board[7]], [board[2],board[5], board[8]]]
    @board_diagonals = [[board[0], board[4], board[8]], [board[2], board[4], board[6]]]
  end

  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
end
