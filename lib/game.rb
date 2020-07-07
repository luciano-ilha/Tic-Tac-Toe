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
    @@counter = 0
  end

  def players_shuffle
    players.shuffle
  end

  def switch_players
    $player_start.reverse
  end

  def the_end_p1
    if game_board.updated_board[0] == 'X' && game_board.updated_board[1] == 'X' && game_board.updated_board[2] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[3] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[5] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[6] == 'X' && game_board.updated_board[7] == 'X' && game_board.updated_board[8] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[0] == 'X' && game_board.updated_board[3] == 'X' && game_board.updated_board[6] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[1] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[7] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[2] == 'X' && game_board.updated_board[5] == 'X' && game_board.updated_board[8] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[0] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[8] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    elsif game_board.updated_board[2] == 'X' && game_board.updated_board[4] == 'X' && game_board.updated_board[6] == 'X'
      $not_the_end_p1 = false
      puts "#{$player_start[0].name} wins!"
    else
      $not_the_end_p1 = true
    end
  end

  def the_end_p2
    if game_board.updated_board[0] == 'O' && game_board.updated_board[1] == 'O' && game_board.updated_board[2] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[3] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[5] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[6] == 'O' && game_board.updated_board[7] == 'O' && game_board.updated_board[8] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[0] == 'O' && game_board.updated_board[3] == 'O' && game_board.updated_board[6] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[1] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[7] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[2] == 'O' && game_board.updated_board[5] == 'O' && game_board.updated_board[8] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[0] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[8] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    elsif game_board.updated_board[2] == 'O' && game_board.updated_board[4] == 'O' && game_board.updated_board[6] == 'O'
      $not_the_end_p2 = false
      puts "#{$player_start[1].name} wins!"
    else
      $not_the_end_p2 = true
    end
  end

  def a_draw
    return unless @@counter == 9 && $not_the_end_p2 == true && $not_the_end_p2 == true

    $not_the_end_p1 = false
    puts "It's a draw!"
  end

  def game_on
    puts "The first one to move will be #{$player_start[0].name}"
    puts "youll be playing with #{$player_start[0].first_player_icon}."
    print "\n"
    while $not_the_end_p1 == true && $not_the_end_p2 == true
      if $not_the_end_p1 == true
        puts "#{$player_start[0].name} please make a move, choose from 1 to 9."
        player_choice = gets.chomp.to_i
        print "\n"
        if game_board.updated_board[player_choice - 1].nil?
          $position_taken = false
          game_board.updated_board.insert((player_choice - 1), $player_start[0].first_player_icon.to_s)
          game_board.updated_board.delete_at(player_choice)
          game_board.update_board
          print "\n"
          @@counter += 1
        else
          while !game_board.updated_board[player_choice - 1].nil?
            puts 'This position already taken! Choose another one.'
            print "\n"
            player_choice = gets.chomp.to_i
          end
          $position_taken = false
          game_board.updated_board.insert((player_choice - 1), $player_start[0].first_player_icon.to_s)
          game_board.updated_board.delete_at(player_choice)
          game_board.update_board
          print "\n"
        end
      end
      the_end_p1
      break if $not_the_end_p1 == false

      a_draw
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
          @@counter += 1
        else
          while !game_board.updated_board[player_next_choice - 1].nil?
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
      break if $not_the_end_p2 == false

      a_draw
      break if $not_the_end_p2 == false
    end
  end
end
