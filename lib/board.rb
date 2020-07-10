class Board
  attr_reader :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    display_board =
    "#{board[0]} | #{board[1]} | #{board[2]}\n" \
    "#{board[3]} | #{board[4]} | #{board[5]}\n" \
    "#{board[6]} | #{board[7]} | #{board[8]}\n" \

  end
end
