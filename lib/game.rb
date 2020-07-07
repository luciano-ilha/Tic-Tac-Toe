class Game
  attr_reader :players, :example_board, :player_start, :player_next, :game_board

  def initialize(player1, player2)
    @players = [player1, player2]
    $player_start = players_shuffle
    $player_next = switch_players
    $position_taken = true
    $next_position_taken = true
    $not_the_end_p1 = true
    $not_the_end_p2 = true
    @example_board = Board.new
    @game_board = Board.new
  end

  def players_shuffle
    players_shuffle = players.shuffle
  end

  def switch_players
    switch_players = $player_start.reverse
  end

  def the_end_p1
    if (game_board.updated_board[0] == 'X' && game_board.updated_board[1] == 'X' && game_board.updated_board[2] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[3] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[5] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[6] == 'X' && game_board.updated_board[7] == 'X' && game_board.updated_board[8] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[0] == 'X' && game_board.updated_board[3] == 'X' && game_board.updated_board[6] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[1] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[7] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[2] == 'X' && game_board.updated_board[5] == 'X' && game_board.updated_board[8] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[0] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[8] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif (game_board.updated_board[2] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[6] == 'X') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    else
      $not_the_end_p1 = true
    end
  end

  def the_end_p2
    if (game_board.updated_board[0] == 'O' && game_board.updated_board[1] == 'O' && game_board.updated_board[2] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[3] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[5] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[6] == 'O' && game_board.updated_board[7] == 'O' && game_board.updated_board[8] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[0] == 'O' && game_board.updated_board[3] == 'O' && game_board.updated_board[6] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[1] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[7] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[2] == 'O' && game_board.updated_board[5] == 'O' && game_board.updated_board[8] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[0] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[8] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif (game_board.updated_board[2] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[6] == 'O') || (game_board.updated_board.length == 9 && game_board.updated_board.none?(nil))
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    else
      $not_the_end_p2 = true
    end
  end

  # def not_empty
  #   if game_board.updated_board.include?(nil)
  #     $not_the_end_p1 = true
  #     $not_the_end_p2 = true
  #   end
  # end

  def game_on
    puts "The first one to move will be #{$player_start[0].name}, you'll be playing with #{$player_start[0].first_player_icon}."
    print "\n"
    while $not_the_end_p1 == true && $not_the_end_p2 == true
      if $not_the_end_p1 == true
        puts "#{$player_start[0].name} please make a move, choose from 1 to 9."
        player_choice = gets.chomp.to_i
        print "\n"
        if game_board.updated_board[player_choice - 1].nil?
          $position_taken == false
          game_board.updated_board.insert((player_choice - 1), $player_start[0].first_player_icon.to_s)
          game_board.updated_board.delete_at(player_choice)
          game_board.update_board
          print "\n"
        else
          while game_board.updated_board[player_choice - 1] != nil
            puts 'This position already taken! Choose another one.'
            print "\n"
            player_choice = gets.chomp.to_i
          end
          $position_taken == false
          game_board.updated_board.insert((player_choice - 1), $player_start[0].first_player_icon.to_s)
          game_board.updated_board.delete_at(player_choice)
          game_board.update_board
          print "\n"
        end
      end
      the_end_p1
      # not_empty
      break if $not_the_end_p1 == false

      if $not_the_end_p2 == true
        puts "Now! #{$player_next[0].name}, it's your turn! Choose a move! Choose from 1 to 9 please."
        print "\n"
        player_next_choice = gets.chomp.to_i
        if game_board.updated_board[player_next_choice - 1].nil?
          $next_position_taken = false
          game_board.updated_board.insert((player_next_choice - 1), $player_next[0].second_player_icon.to_s)
          game_board.updated_board.delete_at(player_next_choice)
          game_board.update_board
          print "\n"
        else
          while game_board.updated_board[player_next_choice - 1] != nil
            puts 'This position already taken! Choose another one.'
            print "\n"
            player_next_choice = gets.chomp.to_i
          end
          $next_position_taken = false
          game_board.updated_board.insert((player_next_choice - 1), $player_next[0].second_player_icon.to_s)
          game_board.updated_board.delete_at(player_next_choice)
          game_board.update_board
          print "\n"
        end
      end
      the_end_p2
      # not_empty
      break if $not_the_end_p2 == false
    end
  end
end
