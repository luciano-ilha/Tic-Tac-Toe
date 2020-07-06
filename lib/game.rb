class Game
  attr_reader :players, :example_board, :player_start, :player_next, :game_board

  def initialize(player1, player2)
    @players = [player1, player2]
    $player_start = players_shuffle
    $player_next = switch_players
    @example_board = Board.new
    @game_board = Board.new
  end

  def players_shuffle
    players_shuffle = players.shuffle
  end

  def switch_players
    switch_players = $player_start.reverse
  end

  def game_on
    puts "The first one to move will be #{$player_start[0].name}, you'll be playing with #{$player_start[0].first_player_icon}."
    print "\n"

    puts "#{$player_start[0].name} please make a move, choose from 1 to 9."
    player_choice = gets.chomp.to_i
    print "\n"

    if game_board.updated_board[player_choice - 1] != nil
      puts "This position already taken! Choose another one."
      print "\n"
    else
      game_board.updated_board.insert((player_choice - 1), "#{$player_start[0].first_player_icon}")
      if game_board.updated_board[player_choice] == nil
        game_board.updated_board.delete_at(player_choice)
      
        game_board.update_board
        print "\n"
      end
    end

    puts "Now! #{$player_next[0].name}, it's your turn! Choose a move! Choose from 1 to 9 please."
    print "\n"
    player_next_choice = gets.chomp.to_i

    if game_board.updated_board[player_next_choice - 1] != nil
      puts "This position already taken! Choose another one."
      print "\n"
    else
      game_board.updated_board.insert((player_next_choice - 1), "#{$player_next[0].second_player_icon}")
      if game_board.updated_board[player_next_choice] == nil
        game_board.updated_board.delete_at(player_next_choice)
      
        game_board.update_board
        print "\n"
      end
    end
  end
end
