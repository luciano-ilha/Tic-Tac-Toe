class Board
  attr_reader :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    # update_board = []
  end

  def display_board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  # def updated_board
  #   puts " #{update_board[0]} | #{update_board[1]} | #{update_board[2]} "
  #   puts '-----------'
  #   puts " #{update_board[3]} | #{update_board[4]} | #{update_board[5]} "
  #   puts '-----------'
  #   puts " #{update_board[6]} | #{update_board[7]} | #{update_board[8]} "
  # end
end
