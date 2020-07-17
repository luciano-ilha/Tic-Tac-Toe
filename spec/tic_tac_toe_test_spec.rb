require './lib/board'
require './lib/game'
require './lib/players'
require './lib/choices'

describe Board do
  let(:player1) { Players.new("John")}
  let(:player2) { Players.new("Doe")}
  let(:inst_board) { Board.new(player1, player2) }
  describe '#display_board' do
    it 'Displays the board for the players.' do
      expect(inst_board.display_board).to eql "1 | 2 | 3\n" \
      "---------\n" \
      "4 | 5 | 6\n" \
      "---------\n" \
      "7 | 8 | 9\n" \
    end    
  end
end

describe Game do
  let(:player1) { Players.new("John")}
  let(:player2) { Players.new("Doe")}
  let(:game_board) { Board.new(player1, player2) }
  let(:player_choice) { Choices.new }
  let(:game) { Game.new(player1, player2, player_choice, game_board) }
  describe '#game_on_p1' do
    it 'Update the chosen position in the game board with the player icon' do
      game_board
      expect(game.game_on_p1(5)).to eql "1 | 2 | 3\n" \
      "---------\n" \
      "4 | X | 6\n" \
      "---------\n" \
      "7 | 8 | 9\n" \
    end    
  end

  describe '#game_on_p2' do
    it 'Update the chosen position in the game board with the player icon' do
      game_board
      expect(game.game_on_p2(5)).to eql "1 | 2 | 3\n" \
      "---------\n" \
      "4 | O | 6\n" \
      "---------\n" \
      "7 | 8 | 9\n" \
    end
  end
end