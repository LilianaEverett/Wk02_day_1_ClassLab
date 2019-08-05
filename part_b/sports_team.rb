class SportsTeam

attr_accessor :name, :players, :coach

# Team name (String), Players (array of strings) and a Coach (String).

def initialize(input_name, input_players, input_coach)
    # define our properties:
    @name = input_name
    @players = input_players
    @coach = input_coach
end

def new_coach(coach_name)
  @coach = 'Rui Vitoria'
end


end
