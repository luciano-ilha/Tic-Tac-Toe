class Game
  attr_reader :players, :board, :player_start, :player_next, :game_board

  def initialize(player1, player2)
    @players = [player1, player2]
    $player_start = players_shuffle
    $player_next = switch_players
    $not_the_end = true
    @game_board = Board.new
    @@counter = 0
  end

  def players_shuffle
    players.shuffle
  end

  def switch_players
    $player_start.reverse
  end

  def the_end
    if (game_board.board[0] == "X" && game_board.board[1] == "X" && game_board.board[2] == "X") || (game_board.board[3] == "X" && game_board.board[4] == "X" && game_board.board[5] == "X") || (game_board.board[6] == "X" && game_board.board[7] == "X" && game_board.board[8] == "X") || (game_board.board[0] == "X" && game_board.board[3] == "X" && game_board.board[6] == "X") || (game_board.board[1] == "X" && game_board.board[4] == "X" && game_board.board[7] == "X") || (game_board.board[2] == "X" && game_board.board[5] == "X" && game_board.board[8] == "X") || (game_board.board[0] == "X" && game_board.board[4] == "X" && game_board.board[8] == "X") || (game_board.board[2] == "X" && game_board.board[4] == "X" && game_board.board[6] == "X")
      puts "#{$player_start[0].name} wins!!"
      $not_the_end = false
    end

    if (game_board.board[0] == "O" && game_board.board[1] == "O" && game_board.board[2] == "O") || (game_board.board[3] == "O" && game_board.board[4] == "O" && game_board.board[5] == "O") || (game_board.board[6] == "O" && game_board.board[7] == "O" && game_board.board[8] == "O") || (game_board.board[0] == "O" && game_board.board[3] == "O" && game_board.board[6] == "O") || (game_board.board[1] == "O" && game_board.board[4] == "O" && game_board.board[7] == "O") || (game_board.board[2] == "O" && game_board.board[5] == "O" && game_board.board[8] == "O") || (game_board.board[0] == "O" && game_board.board[4] == "O" && game_board.board[8] == "O") || (game_board.board[2] == "O" && game_board.board[4] == "O" && game_board.board[6] == "O")
      puts "#{$player_start[0].name} wins!!"
      $not_the_end = false
    end
  end

  def a_draw
    return unless @@counter == 9 && $not_the_end
    $not_the_end = false
    puts "It's a draw!"
  end

  
  def game_on_p1
    player_choice = gets.chomp.to_i
    print "\n"
    while player_choice <= 0 || player_choice > 9
      puts "Invalid move!! Choose again"
      player_choice = gets.chomp.to_i
      print "\n"
    end
    if game_board.board.map! { |num| num == player_choice ? "#{$player_start[0].first_player_icon}" : num }
      game_board.display_board
      print "\n"
      @@counter += 1
    end
    the_end
    a_draw
  end

  def game_on_p2
    player_next_choice = gets.chomp.to_i
    print "\n"
    while player_next_choice <= 0 || player_next_choice > 9
      puts "Invalid move!! Choose again"
      player_next_choice = gets.chomp.to_i
      print "\n"
    end
    if game_board.board.map! { |num| num == player_next_choice ? "#{$player_next[0].second_player_icon.to_s}" : num }
      game_board.display_board
      print "\n"
      @@counter += 1
    end
    the_end
    a_draw
  end

  # def game_on
  # 
  #   the_end_p1
  #   break if $not_the_end_p1 == false

  #   a_draw
  #   break if $not_the_end_p1 == false

  #   if $not_the_end_p2 == true
  #     puts "Now! #{$player_next[0].name}, it's your turn! Choose a move! Choose from 1 to 9 please."
  #     print "\n"
  #     player_next_choice = gets.chomp.to_i
  #     if game_board.updated_board[player_next_choice - 1].nil?
  #       $next_position_taken = false
  #       game_board.updated_board.insert((player_next_choice - 1), $player_next[0].second_player_icon.to_s)
  #       game_board.updated_board.delete_at(player_next_choice)
  #       game_board.update_board
  #       print "\n"
  #       @@counter += 1
  #     else
  #       while !game_board.updated_board[player_next_choice - 1].nil?
  #         puts 'This position already taken! Choose another one.'
  #         print "\n"
  #         player_next_choice = gets.chomp.to_i
  #       end
  #       $next_position_taken = false
  #       game_board.updated_board.insert((player_next_choice - 1), $player_next[0].second_player_icon.to_s)
  #       game_board.updated_board.delete_at(player_next_choice)
  #       game_board.update_board
  #       print "\n"
  #     end
  #   end
  #   the_end_p2
  #   break if $not_the_end_p2 == false

  #   a_draw
  #   break if $not_the_end_p2 == false
  # end
# end
end
