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
    game_board.board_rows.each do |arr|
      if arr[0] = "X" && arr[1] = "X" && arr[2] = "X"
        $not_the_end = false
        puts "#{$player_start[0].name} wins!"
      elsif arr[0] = "O" && arr[1] = "O" && arr[2] = "O"
        $not_the_end = false
        puts "#{$player_next[0].name} wins!"
      else
        $not_the_end = true
      end
    end
      
    game_board.board_columns.each do |arr|
      if arr[0] = "X" && arr[1] = "X" && arr[2] = "X"
        $not_the_end = false
        puts "#{$player_start[0].name} wins!"
      elsif arr[0] = "O" && arr[1] = "O" && arr[2] = "O"
        $not_the_end = false
        puts "#{$player_next[0].name} wins!"
      else
        $not_the_end = true
      end
    end

    game_board.board_diagonals.each do |arr|
      if arr[0] = "X" && arr[1] = "X" && arr[2] = "X"
        $not_the_end = false
        puts "#{$player_start[0].name} wins!"
      elsif arr[0] = "O" && arr[1] = "O" && arr[2] = "O"
        $not_the_end = false
        puts "#{$player_next[0].name} wins!"
      else
        $not_the_end = true
      end
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
    while $not_the_end == true
      if player_choice <= 0 || player_choice > 9
        puts "Invalid move!! Choose again"
        player_choice = gets.chomp.to_i
        print "\n"
      elsif game_board.board.map! { |num| num == player_choice ? "#{$player_start[0].first_player_icon}" : num }
        game_board.display_board
        print "\n"
        @@counter += 1
        break
      end
      # the_end
    end
  end

  def game_on_p2
    player_next_choice = gets.chomp.to_i
    print "\n"
    while $not_the_end == true
      if player_next_choice <= 0 || player_next_choice > 9
        puts "Invalid move!! Choose again"
        player_next_choice = gets.chomp.to_i
        print "\n"
      elsif game_board.board.map! { |num| num == player_next_choice ? "#{$player_next[0].second_player_icon.to_s}" : num }
        game_board.display_board
        print "\n"
        @@counter += 1
        break
      end
      # the_end
    end
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
