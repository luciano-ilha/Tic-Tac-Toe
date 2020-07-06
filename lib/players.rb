class Players
  attr_reader :name, :first_player_icon, :second_player_icon

  def initialize(name)
    @name = name
    @first_player_icon = "X"
    @second_player_icon = "O"
  end
end
