class SportsTeam

attr_accessor :name, :players, :coach, :points

# Team name (String), Players (array of strings) and a Coach (String).

  def initialize(input_name, input_players, input_coach, input_points = 0)
    # define our properties:
    @name = input_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  def new_coach(coach_name)
    @coach = 'Rui Vitoria'
  end

  def new_player(new_player_name)
    @players.push(new_player_name)
  end

  def add_or_remove_points(points)
    @points += points if points >= 0
    @points += points if points < 0
  end




end
