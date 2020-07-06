class Board
  attr_reader :example_board, :updated_board

  def initialize
    @example_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @updated_board = []
  end

  def display_board
    puts " #{example_board[0]} | #{example_board[1]} | #{example_board[2]} "
    puts '-----------'
    puts " #{example_board[3]} | #{example_board[4]} | #{example_board[5]} "
    puts '-----------'
    puts " #{example_board[6]} | #{example_board[7]} | #{example_board[8]} "
  end

  def update_board
    puts " #{updated_board[0]} | #{updated_board[1]} | #{updated_board[2]} "
    puts '-----------'
    puts " #{updated_board[3]} | #{updated_board[4]} | #{updated_board[5]} "
    puts '-----------'
    puts " #{updated_board[6]} | #{updated_board[7]} | #{updated_board[8]} "
  end
end
